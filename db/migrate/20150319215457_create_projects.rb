class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :about
      t.string :dev_date
      t.string :repo
      t.text :status

      t.timestamps null: false
    end
  end
end
