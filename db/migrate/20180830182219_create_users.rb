class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :task_id
      t.boolean :admin
      t.timestamps
    end
  end
end