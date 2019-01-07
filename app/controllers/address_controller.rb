class AddressController < ApplicationController
   before_action :authenticate_user!

   def create
    binding.pry
    @user = User.find(params[:user_id])
    @user.update(count: params[:count])
    @address =  @user.build_address(address: params[:address], city: params[:city], country: params[:country], zip: params[:zip])
    @address.save
    render json: @user
  end

  def address_params
     params.require(:address).permit(:address, :city, :country, :zip)
  end
end