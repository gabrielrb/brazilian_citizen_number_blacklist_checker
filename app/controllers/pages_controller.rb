class PagesController < ApplicationController
  before_action :set_uptime, only: :status
  def home
  end

  def status
  end

  private

  def set_uptime
    @uptime = BrazilianCitizenNumberBlacklistChecker::BOOTED_AT
  end
end
