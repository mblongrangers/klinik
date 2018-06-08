class PatientInfo < ApplicationRecord
	validates :provinsi, presence: true
	validates :kota, presence: true
	validates :kecamatan, presence: true
	validates :alamat, presence: true

  belongs_to :patient
  accepts_nested_attributes_for :patient
end
