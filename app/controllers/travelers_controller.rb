class TravelersController < ApplicationController
  def index
    @travelers = Traveler.all
  end

  def show
    find_traveler
    @fave_vacas = @traveler.vacations.where(favorite: true)
  end

private

  def find_traveler
    @traveler = Traveler.find(params[:id])
  end
end
