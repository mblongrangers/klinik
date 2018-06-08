class History < ApplicationRecord
	validates :no_urut, presence: true
	validates :no_rekam_medis, presence: true
end
