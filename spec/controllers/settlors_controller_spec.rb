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

describe SettlorsController do

  # This should return the minimal set of attributes required to create a valid
  # Settlor. As you add validations to Settlor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "full_legal_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SettlorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all settlors as @settlors" do
      settlor = Settlor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:settlors).should eq([settlor])
    end
  end

  describe "GET show" do
    it "assigns the requested settlor as @settlor" do
      settlor = Settlor.create! valid_attributes
      get :show, {:id => settlor.to_param}, valid_session
      assigns(:settlor).should eq(settlor)
    end
  end

  describe "GET new" do
    it "assigns a new settlor as @settlor" do
      get :new, {}, valid_session
      assigns(:settlor).should be_a_new(Settlor)
    end
  end

  describe "GET edit" do
    it "assigns the requested settlor as @settlor" do
      settlor = Settlor.create! valid_attributes
      get :edit, {:id => settlor.to_param}, valid_session
      assigns(:settlor).should eq(settlor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Settlor" do
        expect {
          post :create, {:settlor => valid_attributes}, valid_session
        }.to change(Settlor, :count).by(1)
      end

      it "assigns a newly created settlor as @settlor" do
        post :create, {:settlor => valid_attributes}, valid_session
        assigns(:settlor).should be_a(Settlor)
        assigns(:settlor).should be_persisted
      end

      it "redirects to the created settlor" do
        post :create, {:settlor => valid_attributes}, valid_session
        response.should redirect_to(Settlor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved settlor as @settlor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Settlor.any_instance.stub(:save).and_return(false)
        post :create, {:settlor => { "full_legal_name" => "invalid value" }}, valid_session
        assigns(:settlor).should be_a_new(Settlor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Settlor.any_instance.stub(:save).and_return(false)
        post :create, {:settlor => { "full_legal_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested settlor" do
        settlor = Settlor.create! valid_attributes
        # Assuming there are no other settlors in the database, this
        # specifies that the Settlor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Settlor.any_instance.should_receive(:update_attributes).with({ "full_legal_name" => "MyString" })
        put :update, {:id => settlor.to_param, :settlor => { "full_legal_name" => "MyString" }}, valid_session
      end

      it "assigns the requested settlor as @settlor" do
        settlor = Settlor.create! valid_attributes
        put :update, {:id => settlor.to_param, :settlor => valid_attributes}, valid_session
        assigns(:settlor).should eq(settlor)
      end

      it "redirects to the settlor" do
        settlor = Settlor.create! valid_attributes
        put :update, {:id => settlor.to_param, :settlor => valid_attributes}, valid_session
        response.should redirect_to(settlor)
      end
    end

    describe "with invalid params" do
      it "assigns the settlor as @settlor" do
        settlor = Settlor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Settlor.any_instance.stub(:save).and_return(false)
        put :update, {:id => settlor.to_param, :settlor => { "full_legal_name" => "invalid value" }}, valid_session
        assigns(:settlor).should eq(settlor)
      end

      it "re-renders the 'edit' template" do
        settlor = Settlor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Settlor.any_instance.stub(:save).and_return(false)
        put :update, {:id => settlor.to_param, :settlor => { "full_legal_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested settlor" do
      settlor = Settlor.create! valid_attributes
      expect {
        delete :destroy, {:id => settlor.to_param}, valid_session
      }.to change(Settlor, :count).by(-1)
    end

    it "redirects to the settlors list" do
      settlor = Settlor.create! valid_attributes
      delete :destroy, {:id => settlor.to_param}, valid_session
      response.should redirect_to(settlors_url)
    end
  end

end