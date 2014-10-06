class CurriculumsController < ApplicationController
respond_to :json
  def index
    @curriculums = Curriculum.all
    respond_with @curriculums
  end

  def show
    @curriculum = Curriculum.find(params[:id])
  end

  def new
    @curriculum = Curriculum.new
  end

  def create
    @curriculum = Curriculum.new(required_params)
    if @curriculum.save
      redirect_to curriculums_path
    else 
      render new
    end
  end

  def edit
    @curriculum = Curriculum.find(params[:id])
  end

  def update
    @curriculum = Curriculum.new(required_params)
    if @curriculum.save
      redirect_to curriculums_path
    else 
      render new
    end
  end

  def destroy
    @curriculum = Curriculum.find(params[:id])
    @curriculum.destroy
    redirect_to curriculums_path
  end

  private

  def required_params
    params.require(:curriculum).permit(:title, :topic, :summary, :syllabus, :timeframe)
  end
end
