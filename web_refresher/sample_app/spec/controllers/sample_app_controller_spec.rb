require 'rails_helper'

RSpec.describe SampleAppController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
  end

  describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to be_success
    end
  end

end
