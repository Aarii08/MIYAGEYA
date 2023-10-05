class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string  :souvenir_id
      t.string  :review
      t.integer :price
      t.string  :purchase_place
      t.string  :receive_send
      t.string  :person
      t.string  :purpose
      t.integer :star
      t.timestamps
    end
  end
end
