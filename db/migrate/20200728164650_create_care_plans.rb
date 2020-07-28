class CreateCarePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :care_plans do |t|
      t.text :summary_of_care
      t.text :summary_of_goals
      t.string :status
      t.references :expert
    end
  end
end
