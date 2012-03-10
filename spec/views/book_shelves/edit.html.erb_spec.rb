require 'spec_helper'

describe "book_shelves/edit" do
  before(:each) do
    @book_shelf = assign(:book_shelf, stub_model(BookShelf,
      :user => nil,
      :book => nil
    ))
  end

  it "renders the edit book_shelf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_shelves_path(@book_shelf), :method => "post" do
      assert_select "input#book_shelf_user", :name => "book_shelf[user]"
      assert_select "input#book_shelf_book", :name => "book_shelf[book]"
    end
  end
end
