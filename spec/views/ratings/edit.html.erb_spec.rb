require 'rails_helper'

RSpec.describe "ratings/edit", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :title => "MyString",
      :score => 1,
      :description => "MyText",
      :restaurant_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input[name=?]", "rating[title]"

      assert_select "input[name=?]", "rating[score]"

      assert_select "textarea[name=?]", "rating[description]"

      assert_select "input[name=?]", "rating[restaurant_id]"

      assert_select "input[name=?]", "rating[user_id]"
    end
  end
end
