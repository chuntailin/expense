class CreateAccountings < ActiveRecord::Migration
  def change
    create_table :accountings do |t|
      t.string :title
      t.integer :expense
      t.datetime :time

      t.timestamps null: false
    end
  end
end
