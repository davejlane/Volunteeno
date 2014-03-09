class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :number_volunteer
      t.float :duration
      t.integer :categoryID
      t.boolean :active

      t.timestamps
    end
  end
end
