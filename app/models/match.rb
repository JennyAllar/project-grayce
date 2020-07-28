class Match < ApplicationRecord
  belongs_to :expert
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :expert_id
end
