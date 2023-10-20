class AddRakutenImageUrlToSouvenirs < ActiveRecord::Migration[6.1]
  def change
    add_column :souvenirs, :rakuten_image_url, :string
    add_column :souvenirs, :rakuten_url, :string
  end
end
