require "rails_helper"

RSpec.describe FillUpsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fill_ups").to route_to("fill_ups#index")
    end


    it "routes to #show" do
      expect(:get => "/fill_ups/1").to route_to("fill_ups#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/fill_ups").to route_to("fill_ups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fill_ups/1").to route_to("fill_ups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fill_ups/1").to route_to("fill_ups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fill_ups/1").to route_to("fill_ups#destroy", :id => "1")
    end

  end
end
