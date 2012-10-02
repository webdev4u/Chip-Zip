class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :parent, :default => 0
      t.string :link
      t.string :name
      t.integer :menu_order,	:limit => 3

      t.timestamps
    end

    add_index	:categories, :link,		:unique => true
    add_index	:categories, :name,		:unique => true
  end
end
