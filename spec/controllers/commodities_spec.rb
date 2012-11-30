require 'spec_helper'

describe CommoditiesController do
  describe "GET index" do
    it "assigns @commodities" do
      commodity = Commodity.create
      get :index
      assigns(:commodities).should eq([commodity])
    end
  end
    
    it "renders the index template" do
      get :index
      response.should render_template("index")
    end
  
  describe "GET new" do
    it "instantiates a new commodity" do
      commodity = Commodity.new
      get :new
      assigns(:commodities).should eq([commodity])
    end
    
    it "renders the new template" do
      get :new
      response.should render_template("new")
    end
  end
  
end