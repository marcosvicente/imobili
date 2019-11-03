class HomeController < ApplicationController
  def index
    @houses = House.all
    @houses_premium = House.where(premium: true).take(5)
  end
end
