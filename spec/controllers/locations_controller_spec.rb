require 'rails_helper'

RSpec.describe LocationsController, type: :controller do

  context 'Given Cape Town exists as a location' do
    before :each do
      create(:location, name: 'Cape Town', short_url: 'cape-town')
    end

    describe "GET #show" do
      it "returns http success for cape-town" do
        get :show, short_url: 'cape-town'
        expect(response).to have_http_status(:success)
      end

      it "returns http not_found for centurion" do
        expect { get :show, short_url: 'centurion' }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end
end
