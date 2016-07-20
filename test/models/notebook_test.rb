require 'test_helper'
include ActionDispatch::TestProcess

class NotebookTest < ActiveSupport::TestCase
  setup do
    @notebook = notebooks(:one)
  end

  test 'has a file' do
    assert File.exist? @notebook.reload.file.path
  end

  test 'uploads a file' do
    # Randomize the title to create a unique Notebook
    @notebook.title = (0..8).map { (65 + rand(26)).chr }.join

    Notebook.create!({
      title: @notebook.title,
      description: @notebook.description,
      file: fixture_file_upload('files/Test.zip')
    })
  end
end
