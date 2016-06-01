require "rails_helper"

RSpec.describe NetworkAnalyticsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/network_analytics").to route_to("network_analytics#index")
    end

    it "routes to #new" do
      expect(:get => "/network_analytics/new").to route_to("network_analytics#new")
    end

    it "routes to #show" do
      expect(:get => "/network_analytics/1").to route_to("network_analytics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/network_analytics/1/edit").to route_to("network_analytics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/network_analytics").to route_to("network_analytics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/network_analytics/1").to route_to("network_analytics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/network_analytics/1").to route_to("network_analytics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/network_analytics/1").to route_to("network_analytics#destroy", :id => "1")
    end

  end
end
