class Page < ActiveRecord::Base
	acts_as_nested_set
	include TheSortableTree::Scopes
  attr_accessible :content, :depth, :lft, :link, :parent_id, :rgt, :title
end
