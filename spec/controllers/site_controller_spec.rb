require 'rails_helper'

RSpec.describe SiteController, type: :controller do
  subject { response }

  describe '#index' do
    let(:response) { get :index }

    it { is_expected.to be_success }
  end
end
