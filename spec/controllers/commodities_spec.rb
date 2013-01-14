require 'spec_helper'

describe CommoditiesController do
  describe "GET index" do
    it "assigns @commodities" do
      commodity = Commodity.create(name: "same")
      get :index
      assigns(:commodities).should == [commodity]
    end
  end
    
    it "renders the index template" do
      get :index
      response.should render_template("index")
    end
  
  describe "GET new" do
    it "creates a new commodity" do
      pending "No Diff but wants me to look at implementation"
      commodity = Commodity.new
      get :new
      assigns(:commodity).should eq(commodity)
    end
    
    it "renders the new template" do
      get :new
      response.should render_template("new")
    end
  end
  
end