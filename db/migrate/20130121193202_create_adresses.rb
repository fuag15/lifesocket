class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :line_one
      t.string :line_two
      t.string :line_three

      t.timestamps
    end
  end
end
