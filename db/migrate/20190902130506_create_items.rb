class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :image_url
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end
end
