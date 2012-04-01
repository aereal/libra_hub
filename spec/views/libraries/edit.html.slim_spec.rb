require 'spec_helper'

describe "libraries/edit" do
  before(:each) do
    @library = assign(:library, stub_model(Library,
      :name => "MyString",
      :slug => "MyString",
      :language => nil
    ))
  end

  it "renders the edit library form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => libraries_path(@library), :method => "post" do
      assert_select "input#library_name", :name => "library[name]"
      assert_select "input#library_slug", :name => "library[slug]"
      assert_select "input#library_language", :name => "library[language]"
    end
  end
end
