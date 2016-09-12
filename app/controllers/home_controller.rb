class HomeController < ShopifyApp::AuthenticatedController

  #layout "application"	

  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      flash[:notice] = "Form saved successfully."
      redirect_to(:action => 'index') 
    end  
    #redirect_to(:action => 'index') 
  end

  def proxy
    redirect_to('https://thecasery.com')
    # @form = Form.new(form_params)
    # if @form.save
      #flash[:notice] = "Form saved successfully."
      #redirect_to(:action => 'index') 
    #end  
  end 

end

private

    def form_params
      params.require(:form).permit(:first_name, :last_name)
    end
