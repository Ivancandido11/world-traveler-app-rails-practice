class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    find_country
  end

private

  def find_country
    @country = Country.find(params[:id])
  end
end
