class CreateTiers < ActiveRecord::Migration[5.2]
  def change
    create_table :tiers do |t|
      t.string :plan 
      t.timestamps
    end
  end
end
