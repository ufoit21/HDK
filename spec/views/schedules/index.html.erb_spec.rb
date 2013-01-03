require 'spec_helper'

describe "schedules/index" do
  before(:each) do
    assign(:schedules, [
      stub_model(Schedule,
        :year => 1,
        :Month => 2,
        :week => 3,
        :statue => "Statue",
        :plan_man_days => 4,
        :acctual_man_days => 5,
        :assigned_project_id => 6
      ),
      stub_model(Schedule,
        :year => 1,
        :Month => 2,
        :week => 3,
        :statue => "Statue",
        :plan_man_days => 4,
        :acctual_man_days => 5,
        :assigned_project_id => 6
      )
    ])
  end

  it "renders a list of schedules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Statue".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
