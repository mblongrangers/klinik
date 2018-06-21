class AddHistoryToMedicineRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :medicine_recipes, :history, foreign_key: true
  end
end
