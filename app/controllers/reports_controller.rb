class ReportsController < ApplicationController
  def index
    @reports = Report.all
    # @reports = Report.group_by{|report| report.created_at.to_date}.values
    # @reports = Order.select("date(created_at) as ordered_date").group("date(created_at)")
  end
  
  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    binding.pry
    # @report = Report.new(caddy_id: report_params[:caddy_id], bags: report_params[:bags], user_id: current_user.id)
    if @report.save(user_id: current_user.id)
      redirect_to reports_path
    else
      render 'new'
    end
  end

  private
    def report_params
      params.require(:report).permit(:caddy_id, :bags)
    end
end
