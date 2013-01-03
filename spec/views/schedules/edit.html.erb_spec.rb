require 'spec_helper'

describe "schedules/edit" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
      :year => 1,
      :Month => 1,
      :week => 1,
      :statue => "MyString",
      :plan_man_days => 1,
      :acctual_man_days => 1,
      :assigned_project_id => 1
    ))
  end

  it "renders the edit schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedules_path(@schedule), :method => "post" do
      assert_select "input#schedule_year", :name => "schedule[year]"
      assert_select "input#schedule_Month", :name => "schedule[Month]"
      assert_select "input#schedule_week", :name => "schedule[week]"
      assert_select "input#schedule_statue", :name => "schedule[statue]"
      assert_select "input#schedule_plan_man_days", :name => "schedule[plan_man_days]"
      assert_select "input#schedule_acctual_man_days", :name => "schedule[acctual_man_days]"
      assert_select "input#schedule_assigned_project_id", :name => "schedule[assigned_project_id]"
    end
  end
end
