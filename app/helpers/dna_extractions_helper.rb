module DnaExtractionsHelper
  def extract_img_comment(img_path)
    extension = File.extname(img_path)

    if %w(.jpg .jpeg .JPG .JPEG).include? extension
      image = EXIFR::JPEG.new img_path
      image.comment.gsub("\n", '<br>').html_safe
    end
  end
end
