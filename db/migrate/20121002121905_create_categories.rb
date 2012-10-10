class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :parent, :default => 0, :null => false
      t.string :link, :null => false
      t.string :name, :null => false
      t.integer :menu_order,	:limit => 1, :null => false
      t.boolean	:show,	:default => true, :null => false
      # t.text	:test, :limit => 16777215

      t.timestamps
    end

    # Insert top level category
    Category.create :parent => 0, :link => 'top', :name => 'Top', :menu_order => 0, :show => false

    add_index	:categories, :link,		:unique => true
    add_index	:categories, :name,		:unique => true
    add_index	:categories, :show
  end
end
