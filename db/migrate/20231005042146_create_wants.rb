class CreateWants < ActiveRecord::Migration[6.1]
  def change
    create_table :wants do |t|
      t.integer :user_id
      t.integer :souvenir_id
      t.timestamps
    end
  end
end
