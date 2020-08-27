class IngredientsController < ApplicationController
  protect_from_forgery

  before_action :find_recipe

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recipe = @recipe
    if @ingredient.save
      redirect_to recipe_path(@recipe), notice: "Ingredient added!"
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to recipe_path(@recipe), notice: "Successfully deleted ingredient."
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :recipe_id)
  end

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
