class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer  :souvenir_id
      t.string  :review
      t.integer :price
      t.string  :purchase_place
      t.string  :receive_send
      t.integer  :people
      t.integer  :usefulness
      t.float :star
      t.timestamps
    end
  end
end
