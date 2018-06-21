class AddHistoryRefToDisease < ActiveRecord::Migration[5.2]
  def change
    add_reference :diseases, :history, foreign_key: true
  end
end
