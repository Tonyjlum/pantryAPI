class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string    :name
      t.integer   :quantity
      t.string    :note, :default => ""
      t.integer   :location_id
      t.datetime  :last_purchase_date
      # t.string  :photo_url, default = "https://p.jing.fm/clipimg/small/8-87925_clipart-wallpaper-blink-food-silhouette-transparent-background.png"
      t.timestamps
    end
  end
end
