class LeadsController < ApplicationController
  def landing
    @lead = Lead.new
    @shops = Shop.order('updated_at DESC')
  end


end
