class AddNoToPatient < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :no, :integer
  end
end
