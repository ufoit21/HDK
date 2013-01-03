require 'spec_helper'

describe "assigned_projects/edit" do
  before(:each) do
    @assigned_project = assign(:assigned_project, stub_model(AssignedProject,
      :user_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit assigned_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assigned_projects_path(@assigned_project), :method => "post" do
      assert_select "input#assigned_project_user_id", :name => "assigned_project[user_id]"
      assert_select "input#assigned_project_project_id", :name => "assigned_project[project_id]"
    end
  end
end
