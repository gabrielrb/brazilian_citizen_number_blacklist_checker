class DocumentsController < ApplicationController

  def index
    @new_document = Document.new

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

  def create
    document = Document.new(document_params)
    if document.save
      redirect_to documents_path, notice: 'CPF adicionado a lista com sucesso.'
    else
      render :index
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    redirect_to documents_path, notice: "CPF excluído da lista com sucesso"
  end

  private

  def document_params
    params.require(:document).permit(:number)
  end
end
