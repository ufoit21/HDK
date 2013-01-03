require 'spec_helper'

describe "assigned_projects/new" do
  before(:each) do
    assign(:assigned_project, stub_model(AssignedProject,
      :user_id => 1,
      :project_id => 1
    ).as_new_record)
  end

  it "renders new assigned_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assigned_projects_path, :method => "post" do
      assert_select "input#assigned_project_user_id", :name => "assigned_project[user_id]"
      assert_select "input#assigned_project_project_id", :name => "assigned_project[project_id]"
    end
  end
end
