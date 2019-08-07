class CreateOpeningHours < ActiveRecord::Migration[5.2]
  def change
    create_table :opening_hours do |t|
      t.references :shop, foreign_key: true
      t.time :open
      t.time :close
      t.integer :day

      t.timestamps
    end
  end
end
