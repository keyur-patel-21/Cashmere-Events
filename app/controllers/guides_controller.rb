class GuidesController < ApplicationController

  before_action :set_guide, only: [:show, :edit, :update, :destroy]
  
  def index
    @guides = Guide.all
  end
  
  def new
    @guide = Guide.new
  end
  
  def create
    @guide = Guide.create(guide_params)
    if @guide.save
      redirect_to guides_path
    else
      render "new"
    end
  end
  
  def edit
  end
  
  def update
    if @guide.update(guide_params)
      redirect_to guide_path(@guide)
    else
      render "edit"
    end
  end

  def show
  end
  
  def destroy
    if @guide.destroy
      redirect_to guides_path
    end
  end

  private

  def set_guide
    @guide = Guide.find(params[:id])
  end

  def guide_params
    params.require(:guide).permit(:type, :age, :language, :content)
  end
end
