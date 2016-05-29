require 'rails_helper'

RSpec.describe "nadaserves/edit", type: :view do
  before(:each) do
    @nadaserve = assign(:nadaserve, Nadaserve.create!(
      :ad_source_connection_id => 1,
      :impressions => 1,
      :revenue => "9.99",
      :revenue_ecpm => 1.5,
      :bid => 1,
      :bid_rate => 1.5
    ))
  end

  it "renders the edit nadaserve form" do
    render

    assert_select "form[action=?][method=?]", nadaserve_path(@nadaserve), "post" do

      assert_select "input#nadaserve_ad_source_connection_id[name=?]", "nadaserve[ad_source_connection_id]"

      assert_select "input#nadaserve_impressions[name=?]", "nadaserve[impressions]"

      assert_select "input#nadaserve_revenue[name=?]", "nadaserve[revenue]"

      assert_select "input#nadaserve_revenue_ecpm[name=?]", "nadaserve[revenue_ecpm]"

      assert_select "input#nadaserve_bid[name=?]", "nadaserve[bid]"

      assert_select "input#nadaserve_bid_rate[name=?]", "nadaserve[bid_rate]"
    end
  end
end