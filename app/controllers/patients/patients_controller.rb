class Patients::PatientsController < Patients::BasePatientsController
  before_action :load_patient
  before_action :load_doctor, only: [:view_doctor, :create_appointment]
  def profile
  end

  def edit_profile
  end

  def update_profile
    if @patient.update_attributes(allowed_params)
      redirect_to patients_profile_path, notice: "Profile updated sucessfully"
    else
      render :edit_profile
    end
  end

  def view_doctor
    @appointment = Appointment.new
  end

  def create_appointment
    @appointment = Appointment.new(appointment_params)
    @appointment.doctor = @doctor
    @appointment.patient = @patient

    @appointment.save
    render :view_doctor
  end

  private
  def load_patient
    @patient = current_patient
  end

  def load_doctor
    @doctor = Doctor.find(params[:id])
  end

  def allowed_params
    params.require(:patient).permit(
    :name, :birthdate,
    :bloodgroup, :tb, :cigarettes, :drug_use,
    :hiv, :bmi, :height, :diabetes, :medication_history, :medical_history)
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_date)
  end
end
