	ActiveAdmin.register PatientInfo do
  menu false
	permit_params :provinsi, :"kota/kabupaten", :kecamatan, :alamat

	form do |f|
		f.inputs do
			f.input :provinsi
			f.input :"kota/kabupaten"
			f.input :kecamatan
			f.input :alamat
			f.actions
		end
	end
end
