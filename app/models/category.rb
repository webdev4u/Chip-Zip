class Category < ActiveRecord::Base
  attr_accessible :link, :name, :menu_order, :parent
end
