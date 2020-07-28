class AddIndexToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :id, :int, unique: true, primary_key: true
  end
end
