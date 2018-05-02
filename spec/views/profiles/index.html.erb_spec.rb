require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :id => nil,
        :username => "Username",
        :first_name => "First Name",
        :last_name => "Last Name",
        :street_address => "Street Address",
        :suburb => "Suburb",
        :postcode => 2
      ),
      Profile.create!(
        :id => nil,
        :username => "Username",
        :first_name => "First Name",
        :last_name => "Last Name",
        :street_address => "Street Address",
        :suburb => "Suburb",
        :postcode => 2
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
