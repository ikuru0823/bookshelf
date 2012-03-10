require 'spec_helper'

describe "book_shelves/show" do
  before(:each) do
    @book_shelf = assign(:book_shelf, stub_model(BookShelf,
      :user => nil,
      :book => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
