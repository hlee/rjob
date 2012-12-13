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

describe JobPostsController do

  # This should return the minimal set of attributes required to create a valid
  # JobPost. As you add validations to JobPost, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JobPostsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all job_posts as @job_posts" do
      job_post = JobPost.create! valid_attributes
      get :index, {}, valid_session
      assigns(:job_posts).should eq([job_post])
    end
  end

  describe "GET show" do
    it "assigns the requested job_post as @job_post" do
      job_post = JobPost.create! valid_attributes
      get :show, {:id => job_post.to_param}, valid_session
      assigns(:job_post).should eq(job_post)
    end
  end

  describe "GET new" do
    it "assigns a new job_post as @job_post" do
      get :new, {}, valid_session
      assigns(:job_post).should be_a_new(JobPost)
    end
  end

  describe "GET edit" do
    it "assigns the requested job_post as @job_post" do
      job_post = JobPost.create! valid_attributes
      get :edit, {:id => job_post.to_param}, valid_session
      assigns(:job_post).should eq(job_post)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JobPost" do
        expect {
          post :create, {:job_post => valid_attributes}, valid_session
        }.to change(JobPost, :count).by(1)
      end

      it "assigns a newly created job_post as @job_post" do
        post :create, {:job_post => valid_attributes}, valid_session
        assigns(:job_post).should be_a(JobPost)
        assigns(:job_post).should be_persisted
      end

      it "redirects to the created job_post" do
        post :create, {:job_post => valid_attributes}, valid_session
        response.should redirect_to(JobPost.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved job_post as @job_post" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobPost.any_instance.stub(:save).and_return(false)
        post :create, {:job_post => { "title" => "invalid value" }}, valid_session
        assigns(:job_post).should be_a_new(JobPost)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobPost.any_instance.stub(:save).and_return(false)
        post :create, {:job_post => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested job_post" do
        job_post = JobPost.create! valid_attributes
        # Assuming there are no other job_posts in the database, this
        # specifies that the JobPost created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JobPost.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => job_post.to_param, :job_post => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested job_post as @job_post" do
        job_post = JobPost.create! valid_attributes
        put :update, {:id => job_post.to_param, :job_post => valid_attributes}, valid_session
        assigns(:job_post).should eq(job_post)
      end

      it "redirects to the job_post" do
        job_post = JobPost.create! valid_attributes
        put :update, {:id => job_post.to_param, :job_post => valid_attributes}, valid_session
        response.should redirect_to(job_post)
      end
    end

    describe "with invalid params" do
      it "assigns the job_post as @job_post" do
        job_post = JobPost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobPost.any_instance.stub(:save).and_return(false)
        put :update, {:id => job_post.to_param, :job_post => { "title" => "invalid value" }}, valid_session
        assigns(:job_post).should eq(job_post)
      end

      it "re-renders the 'edit' template" do
        job_post = JobPost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobPost.any_instance.stub(:save).and_return(false)
        put :update, {:id => job_post.to_param, :job_post => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested job_post" do
      job_post = JobPost.create! valid_attributes
      expect {
        delete :destroy, {:id => job_post.to_param}, valid_session
      }.to change(JobPost, :count).by(-1)
    end

    it "redirects to the job_posts list" do
      job_post = JobPost.create! valid_attributes
      delete :destroy, {:id => job_post.to_param}, valid_session
      response.should redirect_to(job_posts_url)
    end
  end

end
