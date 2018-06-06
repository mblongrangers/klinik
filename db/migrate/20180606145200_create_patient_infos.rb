class CreatePatientInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_infos do |t|
      t.string :kota
      t.string :kabupaten
      t.string :kecamatan

      t.timestamps
    end
  end
end
