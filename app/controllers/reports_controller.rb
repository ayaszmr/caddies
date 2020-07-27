require 'date'

class ReportsController < ApplicationController
  before_action :set_ransack
  def index
    @bags = Report.order(bags: "ASC").order(created_at: "ASC").where(round_at: Date.today).first(5)
    @bagss = Report.order(bags: "ASC").order(created_at: "ASC").where(round_at: Date.today).limit(5).offset(5)
    @bagsss = Report.order(bags: "ASC").order(created_at: "ASC").where(round_at: Date.today).limit(5).offset(10)
    @bagssss = Report.order(bags: "ASC").order(created_at: "ASC").where(round_at: Date.today).limit(5).offset(15)
    @bagsssss = Report.order(bags: "ASC").order(created_at: "ASC").where(round_at: Date.today).limit(5).offset(20)
    @bagssssss = Report.order(bags: "ASC").order(created_at: "ASC").where(round_at: Date.today).limit(5).offset(25)


    @q = Report.ransack(params[:q])
    @reports = @q.result(distinct: true)
  end
  
  def new
    @report = Report.new
  end

  def create
    # @report = Report.new(report_params)
    # binding.pry
    @report = Report.new(caddy_id: report_params[:caddy_id], bags: report_params[:bags], user_id: current_user.id, round_at: Date.today)
    if @report.save(user_id: current_user.id)
      redirect_to reports_path
    else
      render 'new'
    end
  end
  def search
    @q = Report.ransack(search_params)
    @reports = @q.result(distinct: true)
      
    @bags = Report.order(bags: "ASC").where(round_at: @q.round_at_eq).first(5)
    @bagss = Report.order(bags: "ASC").where(round_at: @q.round_at_eq).limit(5).offset(5)
    @bagsss = Report.order(bags: "ASC").where(round_at: @q.round_at_eq).limit(5).offset(10)
    @bagssss = Report.order(bags: "ASC").where(round_at: @q.round_at_eq).limit(5).offset(15)
    @bagsssss = Report.order(bags: "ASC").where(round_at: @q.round_at_eq).limit(5).offset(20)
    @bagssssss = Report.order(bags: "ASC").where(round_at: @q.round_at_eq).limit(5).offset(25)
  end

  private
    def report_params
      params.require(:report).permit(:caddy_id, :bags,)
    end
    def search_params
      params.require(:q).permit(:round_at_eq)
    end
    def set_ransack
      @q = Report.ransack(params[:q])  
    end
end