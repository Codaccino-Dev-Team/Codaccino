class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index, :sort_wifi_up]
  respond_to :html, :pdf, :json 
  
  def index
    #@shops = Shop.order('updated_at DESC')
    @shops = Shop.order("'#{params[:sort_by]}' DESC")
  end

  def sort_wifi_up
    @shops = Shop.all.reorder('wifi_up').reverse_order
    render "index"
  end
  def sort_wifi_down
    @shops = Shop.all.reorder('wifi_down').reverse_order
    render "index"
  end
  def sort_noise
    @shops = Shop.all.reorder('noise').reverse_order
    render "index"
  end
  def sort_power
    @shops = Shop.all.reorder('outlet_rating').reverse_order
    render "index"
  end
  
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new shop_params
    if @shop.save!
      flash[:success] = "data saved in the datebase bro"
      redirect_to root_path
    else
      flash[:error] = "Shop not saved in the database bro... Try again"
      redirect_to root_path
    end
  end
  def edit
    
  end
  def update
    if @shop.update_attributes(shop_params)
      flash[:success] = "You've updated the coffeeshop info!"
      redirect_to @shop
      # redirect_to root_path
    else
      flash[:error] = "something went wrong. Try again"
      redirect_to @shop
   end
  end
  def rate_shop
    @shop = Shop.find(params[:shop][:id])
    @shop.ratings_count += 1 
    @shop.wifi_up = (((@shop.wifi_up * @shop.ratings_count) + params[:shop][:wifi_up].to_i) / @shop.ratings_count)
    @shop.wifi_down = (((@shop.wifi_down * @shop.ratings_count) + params[:shop][:wifi_down].to_i) / @shop.ratings_count)
    
    #if @shop.update_attributes(shop_params)
    if @shop.save
      flash[:success] = "You've updated the coffeeshop info!"
      redirect_to :controller => 'shops', :action => 'index', :sort_by => 'updated_at'
      #format.html {redirect_to :action => 'edit', :id => @sponsorship_request.id}
      # redirect_to root_path
    else
      flash[:error] = "something went wrong. Try again"
      #redirect_to index
      redirect_to @shop

    end
  end

  def destroy
    @shop.destroy
    flash[:success] = "Good riddens... We hope!"
    redirect_to root_path

  end
private

  def set_shop
    @shop = Shop.find(params[:id])
  end
  def shop_params
    params.require(:shop).permit  :id,
                                  :name,
                                  :address,
                                  :site,
                                  :phone,
                                  :noise,
                                  :wifi_up,
                                  :wifi_down,
                                  :outlet_rating,
                                  :hrs_wkday,
                                  :hrs_saturday,
                                  :hrs_sunday,
                                  :shop_image,
                                  :shop_image_cache
  end

end

