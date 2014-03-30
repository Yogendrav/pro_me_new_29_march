class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :project_id
      t.text :commenting

      t.timestamps
    end
  end
end
