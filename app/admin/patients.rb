	ActiveAdmin.register Patient do
	permit_params :nama_lengkap, :no_telepon, :pelayanan, :jenis_kelamin, :tempat_lahir, :tanggal_lahir

	form do |f|
		f.inputs do
			f.input :nama_lengkap
			f.input :no_telepon
			f.input :pelayanan
			f.input :jenis_kelamin
			f.input :tempat_lahir
			f.input :tanggal_lahir, as: :datepicker,
				datepicker_option: {
					min_date: "1950-01-01",
					max_date: "+1D",
					start_date: "1950-01-01"
				}
			f.actions 
		end
	end
end

