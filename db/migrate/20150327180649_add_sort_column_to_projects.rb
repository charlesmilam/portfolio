class AddSortColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :sort, :integer
  end
end
