class AddPatientRefToHistory < ActiveRecord::Migration[5.2]
  def change
    add_reference :histories, :patient, foreign_key: true
  end
end
