class CreateMedicineRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :medicine_recipes do |t|
      t.string :kodeobat, limit: 15
      t.string :namaobat, limit: 45
      t.datetime :tanggal_kadaluarsa
      

      t.timestamps
    end
  end
end
