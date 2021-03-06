class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social, :psocial, :social1, :social2, :social3, :social4
  
  def show
    @risk = Risk.all
    @user = current_user
    render_wizard
  end
  
  def update
    @user = current_user
    @user.attributes = params[:user]
    render_wizard @user
  end
  
  def r_social
    redirect_to_next(:socialp)
  end
    
  def update_rzs
    if ( Riskization.update(params[:riskization].keys, params[:riskization].values))
        flash[:notice] = 'Reports were successfully updated.'
      if (session[:st] == 1)
        redirect_to_next(:social4)
      end
      if (session[:st] == 2)
        redirect_to_finish_wizard
      end
    else
      redirect_to_next(:social4)  
    end    
 end 

 
  
private
  def redirect_to_finish_wizard(options = nil)
    redirect_to users_path
  end
end
