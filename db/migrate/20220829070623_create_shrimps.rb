class CreateShrimps < ActiveRecord::Migration[5.2]
  def change
    create_table :shrimps do |t|
      t.string :name
      t.float :length_in_cm
      t.boolean :is_female
      t.string :color
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
