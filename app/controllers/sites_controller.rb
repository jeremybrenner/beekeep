class SitesController < ApplicationController

  def landing
    @beefact = random_bee_fact
  end
  
end
