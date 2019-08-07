class AddClosedToOpeningHours < ActiveRecord::Migration[5.2]
  def change
    add_column :opening_hours, :closed, :boolean
  end
end
