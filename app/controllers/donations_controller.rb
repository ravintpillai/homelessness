class DonationsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def new
  	@donation = Donation.new
  	@donation.amount = 20
  	@donation.charity_id=params[:charity]
  	@donation.save
  	redirect_to root_path
  end
end