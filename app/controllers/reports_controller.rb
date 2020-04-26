class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    redirect_to controller: :top, action: :index
  end
end
