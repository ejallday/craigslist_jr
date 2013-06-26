class CreateTableListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string    :title
      t.text      :description
      t.integer   :price
      t.integer   :category_id
      t.timestamps
    end
  end
end
