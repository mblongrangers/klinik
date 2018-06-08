class MedicineRecipe < ApplicationRecord
	validates :kodeobat, presence: true
	validates :namaobat, presence: true
	validates :tanggal_kadaluarsa, presence: true
end
