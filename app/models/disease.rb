class Disease < ApplicationRecord
	validates :keluhan_utama, presence: true
	validates :kode_penyakit, presence: true
	validates :nama_penyakit, presence: true
	validates :gejala_gejala, presence: true
end
