class ShopsController < ApplicationController
  respond_to :html, :pdf, :json 
  before_action :set_shop, only: [:show]
  before_action :authorize_new_shop, only: [:new]
  before_action :authorize_created_shop, only: [:create]
  before_action :set_and_authorize_shops, only: [ :index,
                                                  :sort_wifi_up,
                                                  :sort_wifi_down,
                                                  :sort_power,
                                                  :sort_noise]
  before_action :set_and_authorize_shop, only:  [ :edit,
                                                  :update,
                                                  :destroy]
  after_action :verify_authorized, only: [:index,
                                          :sort_wifi_up,
                                          :sort_wifi_down,
                                          :sort_power,
                                          :sort_noise]
  after_action :verify_authorized, only: [:new,
                                          :create,
                                          :update,
                                          :destroy]

  def index
    if params[:sort_by]
      @shops = Shop.order("'#{params[:sort_by]}' DESC")
    else
      @shops = Shop.order('updated_at DESC')
    end  
  end

  def sort_wifi_up
    @shops = @shops.reorder('wifi_up').reverse_order
    render "index"
  end
  def sort_wifi_down
    @shops = @shops.reorder('wifi_down').reverse_order
    render "index"
  end
  def sort_noise
    @shops = @shops.reorder('noise').reverse_order
    render "index"
  end
  def sort_power
    @shops = @shops.reorder('outlet_rating').reverse_order
    render "index"
  end
  
  def new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      flash[:success] = "#{SUCCESS_MESSAGE}"
      redirect_to root_path
    else
      flash[:error] = "#{ERROR_MESSAGE}"
      redirect_to root_path
    end
  end
  def edit  
        
  end
  def update
     if @shop.update_attributes(shop_params)
      flash[:success] = "#{SUCCESS_MESSAGE}"
      redirect_to @shop
      # redirect_to root_path
    else
      flash[:error] = "#{ERROR_MESSAGE}"
      redirect_to @shop
    end
  end
  def rate
    
  end
  
  def summary
     @shops = Shop.all
  end
  
  def destroy
    @shop.destroy
    flash[:success] = "#{DELETE_MESSAGE}"
    redirect_to root_path

  end
private

  def set_shop
    if params[:id]
      @shop = Shop.find(params[:id])
    else
      Shop.new shop_params
    end
  end

  def set_and_authorize_shops
    @shops = Shop.all
    authorize @shops
  end

  def authorize_new_shop
    @shop = Shop.new
    authorize @shop
  end

  def authorize_created_shop
    @shop = Shop.new shop_params
    authorize @shop
  end

  def set_and_authorize_shop
    set_shop
    authorize @shop
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

