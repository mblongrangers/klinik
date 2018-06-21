	ActiveAdmin.register History do

    permit_params :no_urut, :no_rekam_medis, :poli_tujuan, :doctor_id, :patient_id

	form do |f|
		f.inputs do
			f.input :no_urut, label: "No. urut"
			f.input :no_rekam_medis, label: "No. rekam medis"
			f.input :poli_tujuan, label: "Poli tujuan"
      f.input :doctor, collection: Doctor.all.map {|u| [u.nama.to_s, u.id]}
      f.input :patient, collection: Patient.all.map {|u| [u.nama_lengkap.to_s, u.id]}
			f.actions
		end
	end
end
