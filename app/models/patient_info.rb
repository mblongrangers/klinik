class PatientInfo < ApplicationRecord
	validates :kota, presence: true
	validates :kabupaten, presence: true
	validates :kecamatan, presence: true

  belongs_to :patient
  accepts_nested_attributes_for :patient
end
