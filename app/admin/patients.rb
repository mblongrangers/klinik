	ActiveAdmin.register Patient do
    permit_params :nama_lengkap, :no_telepon, :pelayanan, :jenis_kelamin, :tempat_lahir, :tanggal_lahir,
      patient_info_attributes: [ :provinsi, :kota, :kecamatan, :alamat ],
      histories_attributes: [ :no_urut, :no_rekam_medis, :poli_tujuan, :doctor_id ]

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
		end

    f.inputs do
      f.has_many :patient_info do |p|
        p.input :provinsi
        p.input :kota
        p.input :kecamatan
        p.input :alamat
      end
    end

    f.actions
	end

  show do
    attributes_table do
      row :nama_lengkap
      row :no_telepon
      row :pelayanan
      row :jenis_kelamin
      row :tempat_lahir
      row :tanggal_lahir

      attributes_table_for patient.patient_info do
        row :provinsi
        row :kota
        row :kecamatan
        row :alamat
      end

      attributes_table_for patient.histories do
        row :no_urut
        row :no_rekam_medis
        row :poli_tujuan
        row :doctor
      end
    end

  end

end

