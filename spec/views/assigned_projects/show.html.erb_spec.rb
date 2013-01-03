require 'spec_helper'

describe "assigned_projects/show" do
  before(:each) do
    @assigned_project = assign(:assigned_project, stub_model(AssignedProject,
      :user_id => 1,
      :project_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
