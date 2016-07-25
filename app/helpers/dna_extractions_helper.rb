module DnaExtractionsHelper
  def extract_img_comment(img_path)
    extension = File.extname(img_path)

    if File.exist?(img_path) && %w(.jpg .jpeg .JPG .JPEG).include?(extension)
      image = EXIFR::JPEG.new img_path
      img_comment = image.comment && image.comment.gsub("\n", '<br>').html_safe
    end

    img_comment || ''
  end
end
