require 'rails_helper'

RSpec.describe TestsController, type: :controller do
  describe 'POST #create' do
    before { post :create }

    it { expect(response.body).to eq('{"thanks":"Rails team!"}') }
  end
end
