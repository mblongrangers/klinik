class AddDoctorRefToHistory < ActiveRecord::Migration[5.2]
  def change
    add_reference :histories, :doctor, foreign_key: true
  end
end
