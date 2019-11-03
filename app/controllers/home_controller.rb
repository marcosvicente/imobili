class HomeController < ApplicationController
  def index
    @houses = House.all.take(15)
    @houses_premium = House.where(premium: true).take(5)
    @info = Info.first
  end
end
