class CreateUserRegisters < ActiveRecord::Migration
  def change
    create_table :user_registers do |t|
      t.string :name
      t.string :email
      t.float :duration_staying
      t.integer :eventID
      t.boolean :coming

      t.timestamps
    end
  end
end
