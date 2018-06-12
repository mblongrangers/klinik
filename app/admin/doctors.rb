	ActiveAdmin.register Doctor do

	permit_params :nama

	form do |f|
		f.inputs do
			f.input :nama, label: "Nama Dokter"

			f.actions
		end
	end		

end
