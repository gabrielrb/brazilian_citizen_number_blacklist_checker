class DocumentsController < ApplicationController

  def show
    @documents = CitizenNumber.all
    @search = params["search"]
    if @search.present?
      @number = @search["number"]
      @document = Document.where(number: @number).last
    end
  end
end
