class DocumentsController < ApplicationController

  def index
    @documents = Document.all
    @search = params["search"]
    if @search.present?
      @number = @search["number"]
      @document = Document.where(number: @number).last
      if @document.nil?
        return @document_number = @number
      end
      @document_number = @document.number
    end
  end
end
