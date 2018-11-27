class CreateWorkLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :work_labels do |t|
      t.integer :work_id
      t.integer :label_id

      t.timestamps
    end
  end
end
