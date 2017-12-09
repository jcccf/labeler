class CreateRows < ActiveRecord::Migration
  def change
    create_table :rows do |t|
      t.string :identifier
      t.integer :project_id
      t.text :data

      t.timestamps null: false
    end
  end
end
