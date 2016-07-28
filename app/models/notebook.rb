class Notebook < ActiveRecord::Base
  mount_uploader :file, NotebookUploader

  validates :title, presence: true, uniqueness: true
  validates :file, presence: true

  after_save :unzip
  before_destroy :destroy_html_and_associated_dir

  def html_filepath
    # Assumes the .zip had an *identically named* .html file in it.
    file.path.gsub('.zip', '.html')
  end

  def destroy_html_and_associated_dir
    # Assumes the .zip might have come with an *identically named* subdirectory
    # with the suffix "_files".
    File.delete html_filepath if File.exists? html_filepath
    associated_dir = file.path.gsub('.zip', '_files')
    FileUtils.remove_dir associated_dir if File.exist? associated_dir
  end

  private

  # The .zip file that was uploaded should contain an HTML page and maybe a
  # subdirectory with images for that page. The HTML file should be named
  # exactly like the .zip, changing the extension. The subdirectory should have
  # the same name with the '_files' suffix.
  #
  # This method unzips the uploaded file to have the HTML ready for rendering.
  def unzip
    return unless file.path.end_with? '.zip'

    `unzip -qq -o #{file.path} -d #{File.dirname(file.path)}`
  end
end
