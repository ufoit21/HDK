class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :year
      t.integer :Month
      t.integer :week
      t.string :statue
      t.integer :plan_man_days
      t.integer :acctual_man_days
      t.integer :assigned_project_id

      t.timestamps
    end
  end
end
