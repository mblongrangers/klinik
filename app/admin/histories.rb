	ActiveAdmin.register History do

	permit_params :no_urut, :no_rekam_medis, :poli_tujuan
	
	form do |f|
		f.inputs do
			f.input :no_urut, label: "No. urut"
			f.input :no_rekam_medis, label: "No. rekam medis"
			f.input :poli_tujuan, label: "Poli tujuan"
			f.actions
		end
	end		
end
