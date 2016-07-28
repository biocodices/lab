require 'test_helper'
include ActionDispatch::TestProcess

class NotebookTest < ActiveSupport::TestCase
  setup do
    # Randomize the title to create a unique Notebook
    random_title = (0..8).map { (65 + rand(26)).chr }.join

    @notebook = Notebook.create!({
      title: random_title,
      file: fixture_file_upload('files/Test.zip')
    })

  end

  test 'has a file' do
    assert File.exist? @notebook.file.path
  end

  test 'unzips the notebook contents' do
    assert File.exist? @notebook.html_filepath
    assert Dir.exist? @notebook.associated_dir
  end
end
