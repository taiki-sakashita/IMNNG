class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :region, :integer, null: false, default: 0
    add_column :users, :full_machine_voice, :integer, null: false, default: 0
  end
end
