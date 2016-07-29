require 'test_helper'

class NewSampleTest < ActionDispatch::IntegrationTest
  test 'dont allow empty form' do
    visit new_sample_path
    click_button 'Create the sample'
    binding.pry
    puts
  end
end
