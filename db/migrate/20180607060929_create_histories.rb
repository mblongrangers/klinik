class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :no_urut, limit: 16
      t.string :no_rekam_medis, limit: 16

      t.timestamps
    end
  end
end
