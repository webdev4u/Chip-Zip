require 'spec_helper'

describe "categories/show" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :parent => 1,
      :link => "Link",
      :name => "Name",
      :order => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Link/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
  end
end
