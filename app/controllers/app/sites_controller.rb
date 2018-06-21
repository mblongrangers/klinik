class App::SitesController < ApplicationController
  def patient
  end

  def search
    @patient = Patient.find_by_id(params[:patient][:id])
    if @patient
      redirect_to app_sites_result_path @patient.to_param
    else
      flash.notice = 'Nomor Pasien tidak ditemukan'
      redirect_to app_sites_patient_path
    end
  end

  def result
    @patient = Patient.find params[:id]
  end
end
