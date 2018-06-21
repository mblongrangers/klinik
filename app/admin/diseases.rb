ActiveAdmin.register Disease do

  menu false

	permit_params :keluhan_utama, :kode_penyakit, :nama_penyakit, :gejala_gejala

	form do |f|
		f.inputs do
			f.input :keluhan_utama, label: "Keluhan utama"
			f.input :kode_penyakit, label: "Kode penyakit"
			f.input :nama_penyakit, label: "Nama penyakit"
			f.input :gejala_gejala, label: "Gejala-gejala"
			f.actions
		end
	end		
end
