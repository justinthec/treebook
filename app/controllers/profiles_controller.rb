class ProfilesController < ApplicationController
  def show
  	@user = User.find_by_profile_name(params[:id])
  	if @user
  		@statuses = @user.statuses.all
  	  # @statuses = Status.find_all_by_user_id(@user.id) # R.I.P. My bootiful solution
	  render action: :show
  	else
	  render file: 'public/404', status: 404, formats: [:html]
  	end
  end
end
