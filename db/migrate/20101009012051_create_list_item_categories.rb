class CreateListItemCategories < ActiveRecord::Migration
  def self.up
    create_table :list_item_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :list_item_categories
  end
end
