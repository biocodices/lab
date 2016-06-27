class SampleDecorator < Draper::Decorator
  delegate_all

  def delete_prompt
    "Delete #{object.full_name} from the database?"
  end
end
