class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string  :name
      t.integer :quantity
      t.string  :note, :default => ""
      t.integer :location_id
      t.timestamps
    end
  end
end
