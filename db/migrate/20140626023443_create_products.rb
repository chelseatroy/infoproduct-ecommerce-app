class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :credits
      t.string :time_to_learn
      t.string :price

      t.timestamps
    end
  end
end
