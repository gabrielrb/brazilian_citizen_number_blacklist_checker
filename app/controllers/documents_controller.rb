class DocumentsController < ApplicationController

  def show
    @documents = Document.all
    @search = params["search"]
    if @search.present?
      @number = @search["number"]
      @document = Document.where(number: @number).last
    end
  end
end
