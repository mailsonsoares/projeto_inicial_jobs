class AddColumnPremiumToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :premium, :boolean
  end
end
