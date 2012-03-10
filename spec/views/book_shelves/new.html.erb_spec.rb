require 'spec_helper'

describe "book_shelves/new" do
  before(:each) do
    assign(:book_shelf, stub_model(BookShelf,
      :user => nil,
      :book => nil
    ).as_new_record)
  end

  it "renders new book_shelf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_shelves_path, :method => "post" do
      assert_select "input#book_shelf_user", :name => "book_shelf[user]"
      assert_select "input#book_shelf_book", :name => "book_shelf[book]"
    end
  end
end
