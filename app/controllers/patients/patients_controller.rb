class Patients::PatientsController < Patients::BasePatientsController
  def profile
  end

  def edit_profile
    @patient = current_patient
  end

  def update_profile

  end
end
