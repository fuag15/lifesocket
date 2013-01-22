class CreateProjectPackages < ActiveRecord::Migration
  def change
    create_table :project_packages do |t|
      t.string :packaged_version
      t.string :version

      t.timestamps
    end
  end
end
