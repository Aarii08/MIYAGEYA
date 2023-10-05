class CreateSouvenirs < ActiveRecord::Migration[6.1]
  def change
    create_table :souvenirs do |t|
      t.integer :prefecture_id
      t.string  :souvenir_name
      t.text    :introduction
      t.integer :category
      t.integer :average_star
      t.timestamps
    end
  end
end
