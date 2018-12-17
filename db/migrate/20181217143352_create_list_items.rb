class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.integer :parent_id
      t.integer :sort_order

      t.timestamps
    end
  end
end
