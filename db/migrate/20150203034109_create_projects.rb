class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.text :settings
      t.text :schema

      t.timestamps null: false
    end
  end
end
