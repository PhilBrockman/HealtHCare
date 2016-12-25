class SplashController < ApplicationController
  def index
    @doctors = Doctor.all
  end
end
