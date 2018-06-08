class CreatePatientInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_infos do |t|
      t.string :kota, limit: 45
      t.string :kabupaten, limit: 45
      t.string :kecamatan, limit: 45

      t.timestamps
    end
  end
end
