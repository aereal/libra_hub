require 'spec_helper'

describe "libraries/index" do
  before(:each) do
    assign(:libraries, [
      stub_model(Library,
        :name => "Name",
        :slug => "Slug",
        :language => nil
      ),
      stub_model(Library,
        :name => "Name",
        :slug => "Slug",
        :language => nil
      )
    ])
  end

  it "renders a list of libraries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
