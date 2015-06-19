class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@home = Home.all
  end

  def index_text
  	@home = Home.find(params[:i])
  	@home.update(params.require(:home).permit(:text))
    respond_to do |format|
      format.html { redirect_to :index, notice: 'Success' }
      format.json { respond_with_bip(@home) }      
    end
  end

  def about
  end

  def contact
  end
  def faq
  end
end
