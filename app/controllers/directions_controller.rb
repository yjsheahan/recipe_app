class DirectionsController < ApplicationController
before_action :find_recipe, except: [ :destroy ]
  def new
    @direction = Direction.new
  end

  def create
    @direction = Direction.new(direction_params)
    @direction.recipe = @recipe
    if @direction.save
      redirect_to recipe_path(@recipe), notice: "Direction added."
    else
      render :new
    end
  end

  # def destroy
  #   @direction = Direction.find(params[:id])
  #   if @direction.destroy
  #     redirect_to recipe_path(@recipe)
  #   end
  # end
  def edit
    @direction = direction.find(params[:id])
  end

  def update
    @direction = direction.find(params[:id])
    @direction.update(direction_params)
  end

  def destroy
    @direction = direction.find(params[:id])
    @direction.destroy
    redirect_to recipe_path(@recipe), notice: "Successfully deleted direction."
  end

  private

  def direction_params
    params.require(:direction).permit(:content, :recipe_id)
  end

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
