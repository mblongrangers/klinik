class History < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  has_one :disease, dependent: :destroy
  has_one :medicine_recipe, dependent: :destroy

	enum poli_tujuan: { "Umum":1, "Gigi":0}

	validates :no_urut, presence: true
	validates :no_rekam_medis, presence: true
	validates :poli_tujuan, presence: true

  accepts_nested_attributes_for :medicine_recipe
  accepts_nested_attributes_for :disease
end
