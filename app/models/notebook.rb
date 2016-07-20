class Notebook < ActiveRecord::Base
  mount_uploader :file, NotebookUploader

  validates :title, presence: true, uniqueness: true
  validates :file, presence: true

  after_save :unzip_and_reassign_file
  before_destroy :destroy_associated_dir

  private

  # The .zip file that was uploaded should contain an HTML page and maybe a
  # subdirectory with images for that page.
  # This method unzips the file and reassigns the unzipped HTML as this
  # Notebook's file.
  # The original file is lost during the unzipping.
  def unzip_and_reassign_file
    return unless zipped?

    `unzip -qq -o #{file.path} -d #{File.dirname(file.path)}`
    assign_html_file
  end

  # After unzipping the uploaded notebook, reassign the file to the HTML version
  def assign_html_file
    zip_file_list = `unzip -l #{file.path}`.split("\n")[3..4] \
                                           .map(&:split).map(&:last)
    html_filename = zip_file_list.find { |fn| fn.end_with? '.html' }
    html_path = File.join(CarrierWave.root, NotebookUploader.store_dir,
                          'notebook', html_filename)
    File.open(html_path) { |f| self.file = f }
    save!
  end

  def zipped?
    file.path.end_with? '.zip'
  end

  def destroy_associated_dir
    # Assumes the .zip might have come with an *identically named* subdirectory
    # with the suffix "_files".
    associated_dir = file.path.gsub('.html', '_files')
    FileUtils.remove_dir associated_dir if File.exist? associated_dir
  end
end
