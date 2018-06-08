	ActiveAdmin.register PatientInfo do
  menu false
	permit_params :kota, :kabupaten, :kecamatan

	form do |f|
		f.inputs do
			f.input :kota
			f.input :kabupaten
			f.input :kecamatan
			f.actions
		end
	end
end
