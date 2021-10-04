class VacationsController < ApplicationController
  def new
    @vacation = Vacation.new
    @countries = Country.all
    @travelers = Traveler.all
  end

  def create
    @vacation = Vacation.new(vaca_params)
    if @vacation.save
      redirect_to country_path(@vacation.country)
    else
      render "new"
    end
  end

private

  def vaca_params
    params.require(:vacation).permit(:country_id, :traveler_id, :favorite)
  end
end
