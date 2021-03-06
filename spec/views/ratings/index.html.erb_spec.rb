require 'rails_helper'

RSpec.describe "ratings/index", type: :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        :title => "Title",
        :score => 2,
        :description => "MyText",
        :restaurant_id => 3,
        :user_id => 4
      ),
      Rating.create!(
        :title => "Title",
        :score => 2,
        :description => "MyText",
        :restaurant_id => 3,
        :user_id => 4
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
