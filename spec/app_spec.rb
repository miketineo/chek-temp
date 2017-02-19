require 'spec_helper'
require 'rack/app/test'

describe App do
  include Rack::App::Test
  rack_app described_class

  describe "CheckTempApp" do
    it "says hello" do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to eq("{'temp': '21.0'}")
    end
  end
end
