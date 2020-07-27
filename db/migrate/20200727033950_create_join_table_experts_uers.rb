class CreateJoinTableExpertsUers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :experts, :users, table_name: :matches do |t|
      t.index :user_id
      t.index :expert_id
    end
  end
end
