class RespsController < ApplicationController
  
  def create
    @user = current_user
    @resp = @user.resps.create(params[:resp])
    redirect_to user_steps_psocial_url
  end
  
  def destroy
    @user = User.find(params[:user_id])
    @resp = @user.resps.find(params[:id])
    @resp.destroy
  end
 
  private
    def numbers_params
      params.require(:resp).permit(:name)
    end
  
end
