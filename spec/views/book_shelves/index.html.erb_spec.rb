require 'spec_helper'

describe "book_shelves/index" do
  before(:each) do
    assign(:book_shelves, [
      stub_model(BookShelf,
        :user => nil,
        :book => nil
      ),
      stub_model(BookShelf,
        :user => nil,
        :book => nil
      )
    ])
  end

  it "renders a list of book_shelves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
