class AddDifficultyToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :prep_time, :integer
    add_column :recipes, :cooking_time, :integer
    add_column :recipes, :difficulty, :string
    add_column :recipes, :servings, :string
  end
end
