require 'spec_helper'

describe CommoditiesController do
  describe "GET index" do
    # before(:each) do
    # Factory(:commodity)
  #end
  it "assigns @commodities" do
      commodity = FactoryGirl.create(:commodity) #Commodity.create(name: "same")
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
      get :new
      assigns(:commodity).should be_a_new(Commodity)
    end
    
    it "renders the new template" do
      get :new
      response.should render_template("new")
    end
  end
  
end