class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :nama_lengkap, limit: 45
      t.string :no_telepon, limit: 13
      t.integer :pelayanan, limit: 1
      t.integer :jenis_kelamin, limit: 1
      t.string :tempat_lahir, limit: 45
      t.datetime :tanggal_lahir

      t.timestamps
    end
  end
end
