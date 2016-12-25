class Patients::BasePatientsController < ApplicationController
  #before_action :validate_admin

  def validate_admin
    unless current_admin
      render "errors/401", status: :unauthorized
    end
  end


  def index
  end
end
