require 'spec_helper'

describe "languages/edit" do
  before(:each) do
    @language = assign(:language, stub_model(Language,
      :name => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit language form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => languages_path(@language), :method => "post" do
      assert_select "input#language_name", :name => "language[name]"
      assert_select "input#language_slug", :name => "language[slug]"
    end
  end
end