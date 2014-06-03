class LeadsController < ApplicationController
  def landing
    @lead = Lead.new
    @shops = Shop.all
  end

end
