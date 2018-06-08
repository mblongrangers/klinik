class PatientInfo < ApplicationRecord
	validates :provinsi, presence: true
	validates :"kota/kabupaten", presence: true
	validates :kecamatan, presence: true
	validates :alamat, presence: true

  belongs_to :patient
  accepts_nested_attributes_for :patient
end
