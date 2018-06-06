class PatientInfo < ApplicationRecord
	validates :kota, presence: true
	validates :kabupaten, presence: true
	validates :kecamatan, presence: true
end
