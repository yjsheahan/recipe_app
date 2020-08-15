class IngredientsController < ApplicationController
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

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :recipe_id)
  end

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
