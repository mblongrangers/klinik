class History < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  has_one :disease

	enum poli_tujuan: { "Umum":1, "Gigi":0}

	validates :no_urut, presence: true
	validates :no_rekam_medis, presence: true
	validates :poli_tujuan, presence: true

  accepts_nested_attributes_for :disease
end
