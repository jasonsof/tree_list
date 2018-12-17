class CreateListItemHierarchies < ActiveRecord::Migration[5.2]
  def change
    create_table :list_item_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :list_item_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "list_item_anc_desc_idx"

    add_index :list_item_hierarchies, [:descendant_id],
      name: "list_item_desc_idx"
  end
end
