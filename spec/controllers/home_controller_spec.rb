require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  context 'Given Cape Town exists as a location' do
    before :each do
      @cape_town = create(:location, name: 'Cape Town', short_url: 'cape-town')
    end

    describe "GET #index" do
      it "assigns Cape Town as the only location" do
        get :index
        expect(assigns(:locations)).to eq([@cape_town])
      end
    end
  end
end
