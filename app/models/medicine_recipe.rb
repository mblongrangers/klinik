class MedicineRecipe < ApplicationRecord
	validates :kodeobat, presence: true
	validates :namaobat, presence: true
	validates :tanggal_kadaluarsa, presence: true

  belongs_to :history
  accepts_nested_attributes_for :history
end
