class CarePlansController < ApplicationController
  helper_method :status_options
  helper_method :experts

  def index
    @care_plans = CarePlan.all
  end

  def new
    @care_plan = CarePlan.new
  end

  def create
    @care_plan = CarePlan.new(care_plan_params)
    if @care_plan.save
      redirect_to(care_plans_path, {notice: "care plan created"})
    else
      render :new
    end
  end

  private

  def care_plan_params
    params.require(:care_plan).permit(:summary_of_care, :summary_of_goals, :status, :expert_id)
  end

  def status_options
    CarePlan::STATUS
  end

  def experts
    Expert.all
  end
end
