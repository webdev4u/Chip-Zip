require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :parent => 1,
      :link => "MyString",
      :name => "MyString",
      :order => 1
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@category), :method => "post" do
      assert_select "input#category_parent", :name => "category[parent]"
      assert_select "input#category_link", :name => "category[link]"
      assert_select "input#category_name", :name => "category[name]"
      assert_select "input#category_order", :name => "category[order]"
    end
  end
end
