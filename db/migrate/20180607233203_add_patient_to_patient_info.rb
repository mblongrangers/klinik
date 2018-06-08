class AddPatientToPatientInfo < ActiveRecord::Migration[5.2]
  def change
    add_reference :patient_infos, :patient, foreign_key: true
  end
end
