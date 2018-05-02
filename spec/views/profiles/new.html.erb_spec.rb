require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :id => nil,
      :username => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :street_address => "MyString",
      :suburb => "MyString",
      :postcode => 1
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[id_id]"

      assert_select "input[name=?]", "profile[username]"

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[street_address]"

      assert_select "input[name=?]", "profile[suburb]"

      assert_select "input[name=?]", "profile[postcode]"
    end
  end
end
