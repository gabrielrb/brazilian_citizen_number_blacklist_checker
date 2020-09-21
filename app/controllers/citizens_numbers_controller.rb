class CitizensNumbersController < ApplicationController
  # before_action :set_citizen_number, only: :show

  def index
    @citizens_numbers = CitizenNumber.all
    @search = params["search"]
    if @search.present?
      @number = @search["number"]
      @citizen_number = CitizenNumber.where(number: @number).last
    end
  end

  # private

  # def set_citizen_number
  #   @citizen_number = CitizenNumber.find(params[:id])
  # end
end
