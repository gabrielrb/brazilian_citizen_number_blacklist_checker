class PagesController < ApplicationController
  def home
  end

  def status
    @document_count = Document.count
    @uptime = BrazilianCitizenNumberBlacklistChecker::BOOTED_AT
  end
end
