class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nick_name
      t.string :phone_number
      t.string :avatar

      t.timestamps
    end
  end
end
