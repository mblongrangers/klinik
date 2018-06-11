ActiveAdmin.register MedicineRecipe do

	permit_params :kodeobat, :namaobat, :tanggal_kadaluarsa

	form do |f|
		f.inputs do
			f.input :kodeobat, label: "Kode obat"
			f.input :namaobat, label: "Nama obat"
			f.input :tanggal_kadaluarsa, as: :datepicker,
				datepicker_option: {
					min_date: "2017-01-01",
					max_date: "+1D",
					start_date: "2018-01-01"
				}
			f.actions
		end
	end		

end
