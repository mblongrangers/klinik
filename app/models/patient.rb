class Patient < ApplicationRecord
	enum pelayanan: { "BPJS":1, "Non BPJS":0}
	enum jenis_kelamin: { "Laki laki":1, Perempuan:0}

	validates :nama_lengkap, presence: true
	validates :no_telepon, presence: true
	validates :pelayanan, presence: true
	validates :jenis_kelamin, presence: true
	validates :tempat_lahir, presence: true
	validates :tanggal_lahir, presence: true

  has_one :patient_info, dependent: :destroy
  has_many :histories, dependent: :destroy

  accepts_nested_attributes_for :patient_info, allow_destroy: true
  accepts_nested_attributes_for :histories, allow_destroy: true
end
