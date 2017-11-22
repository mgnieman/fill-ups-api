require 'rails_helper'

RSpec.describe "FillUps", type: :request do
  describe "GET /fill_ups" do
    it "works! (now write some real specs)" do
      get fill_ups_path
      expect(response).to have_http_status(200)
    end
  end
end
