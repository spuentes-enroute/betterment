class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def show
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      flash[:notice] = "Plan was created successfully"
      redirect_to @plan
    else
      puts @plan
    end
  end

  private
  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:name, :period, :period_type, :price)
  end
end
