class ProfileController < ApplicationController
  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    Profile.create(permit_profile_params)
    redirect_to profile_path
  end

  private

  def permit_profile_params
    params.require(:profile).permit(:first_name, :last_name, :email, :contact_number, :college_name, :interested_subjects)
  end

end
