class Category < ActiveRecord::Base
  attr_accessible :link, :name, :menu_order, :parent, :show

  public

  def self.parents_hash(parents)
  	categoriesHash = Hash.new
  	parents.each do |parent|
      categoriesHash[parent.id] = parent.name
    end
    categoriesHash
  end
end
