class LibraryDnaDecorator < Draper::Decorator
  delegate_all

  def description
    "DNA #{object.dna_extraction.tag} from Library #{object.library.id} (#{object.well})"
  end
end
