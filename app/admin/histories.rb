	ActiveAdmin.register History do

  permit_params :no_urut, :no_rekam_medis, :poli_tujuan, :doctor_id, :patient_id,
    disease_attributes: [ :keluhan_utama, :kode_penyakit, :nama_penyakit, :gejala_gejala ],
    medicine_recipe_attributes: [ :kodeobat, :namaobat, :tanggal_kadaluarsa ]


	form do |f|
		f.inputs do
			f.input :no_urut, label: "No. urut"
			f.input :poli_tujuan, label: "Poli tujuan"
      f.input :doctor, collection: Doctor.all.map {|u| [u.nama.to_s, u.id]}
      f.input :patient, collection: Patient.all.map {|u| [u.nama_lengkap.to_s, u.id]}
		end

    f.inputs do
      f.has_many :disease do |disease|
        disease.input :kode_penyakit, label: "Kode penyakit"
        disease.input :keluhan_utama, label: "Keluhan utama"
        disease.input :nama_penyakit, label: "Nama penyakit"
        disease.input :gejala_gejala, label: "Gejala-gejala"
      end
    end

    f.inputs do
      f.has_many :medicine_recipe do |medicine|
        medicine.input :kodeobat, label: "Kode obat"
        medicine.input :namaobat, label: "Nama obat"
        medicine.input :tanggal_kadaluarsa, as: :datepicker,
          datepicker_option: {
          min_date: "2017-01-01",
          max_date: "+1D",
          start_date: "2018-01-01"
        }
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

      attributes_table_for history.medicine_recipe do
        row :kodeobat, label: "Kode obat"
        row :namaobat, label: "Nama obat"
        row :tanggal_kadaluarsa
      end
    end
  end
end
