class NotebooksController < ApplicationController
  before_action :set_notebook, only: [:show, :edit, :update, :destroy]

  def index
    @notebooks = Notebook.order(date: :desc).decorate
    @notebook = Notebook.new
  end

  def show
    render file: @notebook.html_filepath
  end

  def image
    filename = "#{params[:image_filename]}.#{params[:format]}"
    dir = File.join(NotebookUploader.store_fullpath, params[:subdir])
    send_file File.join(dir, filename), disposition: 'inline'
  end

  def new
    @notebook = Notebook.new
  end

  def edit
  end

  def create
    @notebook = Notebook.new(notebook_params)
    @notebook.file = params[:notebook][:file]

    if @notebook.save
      redirect_to @notebook, notice: 'Notebook was successfully created.'
    else
      @notebooks = Notebook.all
      render :index
    end
  end

  def update
    if @notebook.update(notebook_params)
      redirect_to @notebook, notice: 'Notebook was successfully updated.'
    else
      render :index
    end
  end

  def destroy
    @notebook.destroy
    redirect_to notebooks_url, notice: 'Notebook was successfully destroyed.'
  end

  private

  def set_notebook
    @notebook = Notebook.find(params[:id])
  end

  def notebook_params
    params.require(:notebook).permit(:title, :description, :date)
  end
end
