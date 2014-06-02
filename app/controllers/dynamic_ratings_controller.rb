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
      flash[:success] = "Your Rating for #{@shop.name} has been factored into the ratings below - Thank you."
      redirect_to shops_path(:sort_by=>"updated_at")
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
                                  :outlet_rating,
                                  :wifi_up,
                                  :wifi_down]
  end

  def update_shop_rating! rating
    old_hash = {wifi_up: @shop.wifi_up,
                wifi_down: @shop.wifi_down,
                noise: @shop.noise,
                outlet_rating: @shop.outlet_rating}
    new_hash = {wifi_up: rating.wifi_up.to_i,
                wifi_down: rating.wifi_down.to_i,
                noise: rating.noise.to_i,
                outlet_rating: rating.outlet_rating.to_i}
    weighted_average = NewShopRating.new new_hash, old_hash, @shop.ratings_count

    @shop.wifi_up = weighted_average.rating_for :wifi_up
    @shop.wifi_down = weighted_average.rating_for :wifi_down
    @shop.outlet_rating = weighted_average.rating_for :outlet_rating
    @shop.noise = weighted_average.rating_for :noise

    @shop.rank = new_rank(@shop.wifi_down.to_i,@shop.wifi_up.to_i,@shop.noise.to_i,@shop.outlet_rating.to_i)
    @shop.ratings_count += 1
    @shop.save!
  end
  def new_rank(wifi_down, wifi_up,noise,power)
    wifi_down_rank = {weight: 4, best: 20}
    wifi_up_rank = {weight: 3, best: 20}
    noise_rank = {weight: 2, best: 5}
    power_rank = {weight: 1, best: 5}
    ((wifi_down_rank[:weight] * (wifi_down.to_f / wifi_down_rank[:best]).to_f) +
     (wifi_up_rank[:weight] * (wifi_up.to_f / wifi_up_rank[:best]).to_f) +
     (noise_rank[:weight] * (noise.to_f / noise_rank[:best]).to_f) +
     (power_rank[:weight] * (power.to_f / power_rank[:best]).to_f))
  end

end
