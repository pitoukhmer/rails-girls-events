class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :admin_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
