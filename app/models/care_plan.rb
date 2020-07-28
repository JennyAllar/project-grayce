class CarePlan < ApplicationRecord
  STATUS = ["independent", "interdependent", "dependent", "crisis", "grieving"]
  validates_presence_of :summary_of_care
  validates_presence_of :summary_of_goals
  validates :status, inclusion: {in: STATUS}
  belongs_to :expert
end
