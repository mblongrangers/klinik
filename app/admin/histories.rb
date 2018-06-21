	ActiveAdmin.register History do

  permit_params :no_urut, :no_rekam_medis, :poli_tujuan, :doctor_id, :patient_id,
    disease_attributes: [ :keluhan_utama, :kode_penyakit, :nama_penyakit, :gejala_gejala ]

	form do |f|
		f.inputs do
			f.input :no_urut, label: "No. urut"
			f.input :no_rekam_medis, label: "No. rekam medis"
			f.input :poli_tujuan, label: "Poli tujuan"
      f.input :doctor, collection: Doctor.all.map {|u| [u.nama.to_s, u.id]}
      f.input :patient, collection: Patient.all.map {|u| [u.nama_lengkap.to_s, u.id]}
		end

    f.inputs do
      f.has_many :disease do |p|
        p.input :keluhan_utama, label: "Keluhan utama"
        p.input :kode_penyakit, label: "Kode penyakit"
        p.input :nama_penyakit, label: "Nama penyakit"
        p.input :gejala_gejala, label: "Gejala-gejala"
      end
    end

    f.actions
	end

  show do
    attributes_table do
      row :no_urut
      row :no_rekam_medis
      row :poli_tujuan
      row :doctor
      row :patient

      attributes_table_for history.disease do
        row :keluhan_utama
        row :kode_penyakit
        row :nama_penyakit
        row :gejala_gejala
      end
    end
  end
end
