class AddFieldsToRiskizations < ActiveRecord::Migration
  def change
    add_column :riskizations, :rver, :integer
    add_column :riskizations, :rposl, :integer
    add_column :riskizations, :danger, :string 
    add_column :riskizations, :mpred, :string 
  end 
end
