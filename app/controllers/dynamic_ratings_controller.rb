class DynamicRatingsController < ApplicationController
  before_action :set_shop

  def new
    flash[:error] = "Need to log in to modify that rating" unless user_signed_in?
    @dynamic_rating = @shop.dynamic_ratings.build

  end

  def create
    @dynamic_rating = @shop.dynamic_ratings.build dynamic_rating_params.merge!(user: current_user)
    if @dynamic_rating.save!
      update_shop_rating! @dynamic_rating
      flash[:success] = "Rating Saved"
      redirect_to @shop
    else
      flash[:error] = "Shop not saved in the database bro... Try again"
      redirect_to root_path
    end

  end


  private

  def set_shop
    @shop = Shop.find params[:shop_id]
  end

  def dynamic_rating_params
    params.require(:dynamic_rating).permit [
                                  :noise,
                                  :wifi_up,
                                  :wifi_down]
  end

  def update_shop_rating! rating
    @shop.noise = rating.noise if rating.noise
    @shop.wifi_up = rating.wifi_up if rating.wifi_up
    @shop.wifi_down = rating.wifi_down if rating.wifi_down
    @shop.save!
  end
end
