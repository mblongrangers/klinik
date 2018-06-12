class Doctor < ApplicationRecord
  has_many :histories
	validates :nama, presence: true
end
