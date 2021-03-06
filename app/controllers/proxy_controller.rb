class ProxyController < ApplicationController
#class ProxyController < ActionController::Base

#protect_from_forgery false, only: [:create]
protect_from_forgery except: :create

def index
 
  end


def create
    @form = Form.new(form_params)
    if @form.save
      flash[:notice] = "Form saved successfully."
      redirect_to(:action => 'index') 
    end  
    #redirect_to(:action => 'index') 
  end



end


private
    def form_params
      params.require(:form).permit(:first_name, :last_name)
    end
