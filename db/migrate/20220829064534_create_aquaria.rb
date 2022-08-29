class CreateAquaria < ActiveRecord::Migration[5.2]
  def change
    create_table :aquaria do |t|
      t.string :name
      t.boolean :has_real_plants
      t.float :gallons
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
