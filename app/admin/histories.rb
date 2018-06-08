	ActiveAdmin.register History do

	permit_params :no_urut, :no_rekam_medis
	
	form do |f|
		f.inputs do
			f.input :no_urut
			f.input :no_rekam_medis
			f.actions
		end
	end		
end
