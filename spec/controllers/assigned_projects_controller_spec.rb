require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AssignedProjectsController do

  # This should return the minimal set of attributes required to create a valid
  # AssignedProject. As you add validations to AssignedProject, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user_id" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AssignedProjectsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all assigned_projects as @assigned_projects" do
      assigned_project = AssignedProject.create! valid_attributes
      get :index, {}, valid_session
      assigns(:assigned_projects).should eq([assigned_project])
    end
  end

  describe "GET show" do
    it "assigns the requested assigned_project as @assigned_project" do
      assigned_project = AssignedProject.create! valid_attributes
      get :show, {:id => assigned_project.to_param}, valid_session
      assigns(:assigned_project).should eq(assigned_project)
    end
  end

  describe "GET new" do
    it "assigns a new assigned_project as @assigned_project" do
      get :new, {}, valid_session
      assigns(:assigned_project).should be_a_new(AssignedProject)
    end
  end

  describe "GET edit" do
    it "assigns the requested assigned_project as @assigned_project" do
      assigned_project = AssignedProject.create! valid_attributes
      get :edit, {:id => assigned_project.to_param}, valid_session
      assigns(:assigned_project).should eq(assigned_project)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AssignedProject" do
        expect {
          post :create, {:assigned_project => valid_attributes}, valid_session
        }.to change(AssignedProject, :count).by(1)
      end

      it "assigns a newly created assigned_project as @assigned_project" do
        post :create, {:assigned_project => valid_attributes}, valid_session
        assigns(:assigned_project).should be_a(AssignedProject)
        assigns(:assigned_project).should be_persisted
      end

      it "redirects to the created assigned_project" do
        post :create, {:assigned_project => valid_attributes}, valid_session
        response.should redirect_to(AssignedProject.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved assigned_project as @assigned_project" do
        # Trigger the behavior that occurs when invalid params are submitted
        AssignedProject.any_instance.stub(:save).and_return(false)
        post :create, {:assigned_project => { "user_id" => "invalid value" }}, valid_session
        assigns(:assigned_project).should be_a_new(AssignedProject)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AssignedProject.any_instance.stub(:save).and_return(false)
        post :create, {:assigned_project => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested assigned_project" do
        assigned_project = AssignedProject.create! valid_attributes
        # Assuming there are no other assigned_projects in the database, this
        # specifies that the AssignedProject created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AssignedProject.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => assigned_project.to_param, :assigned_project => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested assigned_project as @assigned_project" do
        assigned_project = AssignedProject.create! valid_attributes
        put :update, {:id => assigned_project.to_param, :assigned_project => valid_attributes}, valid_session
        assigns(:assigned_project).should eq(assigned_project)
      end

      it "redirects to the assigned_project" do
        assigned_project = AssignedProject.create! valid_attributes
        put :update, {:id => assigned_project.to_param, :assigned_project => valid_attributes}, valid_session
        response.should redirect_to(assigned_project)
      end
    end

    describe "with invalid params" do
      it "assigns the assigned_project as @assigned_project" do
        assigned_project = AssignedProject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AssignedProject.any_instance.stub(:save).and_return(false)
        put :update, {:id => assigned_project.to_param, :assigned_project => { "user_id" => "invalid value" }}, valid_session
        assigns(:assigned_project).should eq(assigned_project)
      end

      it "re-renders the 'edit' template" do
        assigned_project = AssignedProject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AssignedProject.any_instance.stub(:save).and_return(false)
        put :update, {:id => assigned_project.to_param, :assigned_project => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested assigned_project" do
      assigned_project = AssignedProject.create! valid_attributes
      expect {
        delete :destroy, {:id => assigned_project.to_param}, valid_session
      }.to change(AssignedProject, :count).by(-1)
    end

    it "redirects to the assigned_projects list" do
      assigned_project = AssignedProject.create! valid_attributes
      delete :destroy, {:id => assigned_project.to_param}, valid_session
      response.should redirect_to(assigned_projects_url)
    end
  end

end
