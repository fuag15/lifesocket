class CreateProjectsProjectPackages < ActiveRecord::Migration
  def change
    create_table :projects_project_packages do |t|
      t.references :project
      t.references :project_package

      t.timestamps
    end
    add_index :projects_project_packages, :project_id
    add_index :projects_project_packages, :project_package_id
  end
end
