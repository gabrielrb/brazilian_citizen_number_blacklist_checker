class Api::V1::DocumentsController < Api::V1::BaseController
  before_action :set_document, only: :show
  def index
    @documents = Document.all
  end

  def show
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end
end
