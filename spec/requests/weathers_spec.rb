require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/weathers", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Weather. As you add validations to Weather, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Weather.create! valid_attributes
      get weathers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      weather = Weather.create! valid_attributes
      get weather_url(weather)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_weather_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      weather = Weather.create! valid_attributes
      get edit_weather_url(weather)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Weather" do
        expect {
          post weathers_url, params: { weather: valid_attributes }
        }.to change(Weather, :count).by(1)
      end

      it "redirects to the created weather" do
        post weathers_url, params: { weather: valid_attributes }
        expect(response).to redirect_to(weather_url(Weather.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Weather" do
        expect {
          post weathers_url, params: { weather: invalid_attributes }
        }.to change(Weather, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post weathers_url, params: { weather: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested weather" do
        weather = Weather.create! valid_attributes
        patch weather_url(weather), params: { weather: new_attributes }
        weather.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the weather" do
        weather = Weather.create! valid_attributes
        patch weather_url(weather), params: { weather: new_attributes }
        weather.reload
        expect(response).to redirect_to(weather_url(weather))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        weather = Weather.create! valid_attributes
        patch weather_url(weather), params: { weather: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested weather" do
      weather = Weather.create! valid_attributes
      expect {
        delete weather_url(weather)
      }.to change(Weather, :count).by(-1)
    end

    it "redirects to the weathers list" do
      weather = Weather.create! valid_attributes
      delete weather_url(weather)
      expect(response).to redirect_to(weathers_url)
    end
  end
end