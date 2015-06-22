class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@home = Home.all
    @slides = Slide.all
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

  def slide_update
    updateActivity(Slide, :slide,:home)
  end
  def slide_new
    createActivity(Slide, :home, {title: "Slide", caption: "This is the caption for slide", image: "http://placehold.it/1000x500"})
  end
  def slide_destroy
    destroyActivity(Slide, :home)
  end

  def faq
    @faqs = Faq.all
  end
  def faq_update
    updateActivity(Faq,:faq,:faq)
  end
  def faq_new
    createActivity(Faq, :faq, {question: "Type your question here.", answer: "Type the answer to your question here."})
  end
  def faq_destroy
    destroyActivity(Faq, :faq)
  end

  def summer
    @Activities = ThingsToDoSummer.all
  end
  def summer_update
    updateActivity(ThingsToDoSummer,:things_to_do_summer,:summer)
  end
  def summer_new
    createActivity(ThingsToDoSummer, :summer, {image: "http://placehold.it/500x500", name: "Activity", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...", url: "www.site.url"})
  end
  def summer_destroy
    destroyActivity(ThingsToDoSummer, :summer)
  end

  def fall
    @Activities = ThingsToDoFall.all
  end
  def fall_update
    updateActivity(ThingsToDoFall,:things_to_do_fall,:fall)
  end
  def fall_new
    createActivity(ThingsToDoFall, :fall,{image: "http://placehold.it/500x500", name: "Activity", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...", url: "www.site.url"})
  end
  def fall_destroy
    destroyActivity(ThingsToDoFall, :fall)
  end

  def spring
    @Activities = ThingsToDoSpring.all
  end
  def spring_update
    updateActivity(ThingsToDoSpring,:things_to_do_spring,:spring)
  end
  def spring_new
    createActivity(ThingsToDoSpring, :spring, {image: "http://placehold.it/500x500", name: "Activity", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...", url: "www.site.url"})
  end
  def spring_destroy
    destroyActivity(ThingsToDoSpring, :spring)
  end

  def winter
    @Activities = ThingsToDoWinter.all
  end
  def winter_update
    updateActivity(ThingsToDoWinter,:things_to_do_winter,:winter)
  end
  def winter_new
    createActivity(ThingsToDoWinter, :winter, {image: "http://placehold.it/500x500", name: "Activity", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...", url: "www.site.url"})
  end
  def winter_destroy
    destroyActivity(ThingsToDoWinter, :winter)
  end



  def updateActivity(model,table_name,route)
    @activity = model.find(params[:id])
    @activity.update(params.require(table_name).permit(:image,:name,:description,:url, :question, :answer))
    respond_to do |format|
      format.html { redirect_to route, notice: 'Success' }
      format.json { respond_with_bip(@activity) }      
    end
  end

  def createActivity(model,route, defaults = "")
    if defaults == ""  
      @record = model.new
    else
      @record = model.new(defaults)
    end
      

    respond_to do |format|
      if @record.save
        format.html { redirect_to route, notice: 'Creation Successful.' }
        format.json { render :show, status: :created, location: route }
      else
        format.html { render :new }
        format.json { render json: gen_hotels_path.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroyActivity(model,route)
    @activity = model.find(params[:id])
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to route, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
