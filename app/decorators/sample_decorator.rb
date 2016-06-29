class SampleDecorator < Draper::Decorator
  delegate_all

  def delete_prompt
    "Delete this sample from #{object.full_name} from the database?"
  end
end
