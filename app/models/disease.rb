class Disease < ApplicationRecord
	validates :keluhan_utama, presence: true
	validates :kode_penyakit, presence: true
	validates :nama_penyakit, presence: true
	validates :gejala_gejala, presence: true

  belongs_to :history

  accepts_nested_attributes_for :history
end
