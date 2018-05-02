require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :id => nil,
      :username => "Username",
      :first_name => "First Name",
      :last_name => "Last Name",
      :street_address => "Street Address",
      :suburb => "Suburb",
      :postcode => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/2/)
  end
end
