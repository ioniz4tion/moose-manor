class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@home = Home.all
  end

  def index_text
  	@home = Home.find(params[:id])
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

  def summer
    @Activities = ThingsToDoSummer.all
  end
  def summer_update
    @activity = ThingsToDoSummer.find(params[:id])
    @activity.update(params.require(:things_to_do_summer).permit(:image,:name,:description,:url))
    respond_to do |format|
      format.html { redirect_to :summer, notice: 'Success' }
      format.json { respond_with_bip(@activity) }      
    end
  end
  def summer_new
    @activity = ThingsToDoSummer.new
  end

  def fall
    @Activities = ThingsToDoFall.all
  end
  def fall_update
    @activity = ThingsToDoFall.find(params[:id])
    @activity.update(params.require(:things_to_do_fall).permit(:image,:name,:description,:url))
    respond_to do |format|
      format.html { redirect_to :fall, notice: 'Success' }
      format.json { respond_with_bip(@activity) }      
    end
  end
  def fall_new
    @activity = ThingsToDoFall.new
  end

  def spring
    @Activities = ThingsToDoSpring.all
  end
  def spring_update
    @activity = ThingsToDoSpring.find(params[:id])
    @activity.update(params.require(:things_to_do_spring).permit(:image,:name,:description,:url))
    respond_to do |format|
      format.html { redirect_to :spring, notice: 'Success' }
      format.json { respond_with_bip(@activity) }      
    end
  end
  def spring_new
    @activity = ThingsToDoSpring.new
  end

  def winter
    @Activities = ThingsToDoWinter.all
  end
  def winter_update
    @activity = ThingsToDoWinter.find(params[:id])
    @activity.update(params.require(:things_to_do_summer).permit(:image,:name,:description,:url))
    respond_to do |format|
      format.html { redirect_to :winter, notice: 'Success' }
      format.json { respond_with_bip(@activity) }      
    end
  end
  def winter_new
    @activity = ThingsToDoWinter.new
  end

end
