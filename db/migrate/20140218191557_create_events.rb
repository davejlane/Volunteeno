class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.string :name
      t.integer :duration
      t.string :description
      t.integer :number_volunteer
      t.boolean :active

      t.timestamps
    end
  end
end
