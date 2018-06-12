class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
    t.string :keluhan_utama, limit: 45	
    t.string :kode_penyakit, limit: 7
    t.string :nama_penyakit, limit: 45
    t.string :gejala_gejala

    t.timestamps
    end
  end
end
