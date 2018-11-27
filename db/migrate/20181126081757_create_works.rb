class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name
      t.string :describe
      t.string :location
      t.string :category
      t.string :model
      t.timestamps
    end
  end
end
