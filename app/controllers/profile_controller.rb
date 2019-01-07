class ProfileController < ApplicationController
   before_action :authenticate_user!

  def create
    binding.pry
    @user = User.find(params[:user_id]);
    @user.update(count: params[:count]);
    @profile = @user.build_profile(profile_params);
    @profile.save
    render json: @user
  end

  def profile_params
     params.require(:profile).permit(:father_name, :married, :age)
  end
end
