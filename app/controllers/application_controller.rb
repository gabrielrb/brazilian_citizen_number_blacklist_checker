class ApplicationController < ActionController::Base
  before_action :set_counter

  private

  def set_counter
    @document_count = Document.count
  end
end
