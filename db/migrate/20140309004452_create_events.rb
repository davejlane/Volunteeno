class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :duration
      t.string :description
      t.integer :number_volunteer
      t.boolean :active
      t.string :categoryID

      t.timestamps
    end
  end
end
