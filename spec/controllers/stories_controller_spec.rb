require 'rails_helper'

RSpec.describe StoriesController, type: :controller do
  subject { response }

  let(:story) { FactoryGirl.create(:story) }

  describe '#index' do
    before { get :index }

    it { is_expected.to be_success }
  end

  describe '#show' do
    before { get :show, params: { id: story.id } }

    it { is_expected.to be_success }
  end

  describe '#new' do
    before { get :new }

    it { is_expected.to be_success }
  end

  describe '#create' do
    let(:request) { post :create, params: params }

    context 'when all valid params' do
      let(:params) {
        { story: {
          title: 'Junta', body: "Story of the ghost " * 50, author_email: 'trey@phish.com' }
        }
      }

      describe 'response' do
        before { request }

        it { is_expected.to be_redirect }
      end

      specify { expect{ request }.to change{ Story.count }.by(1) }
    end

    context 'when non permitted params' do
      let(:params) {
        { title: 'Junta', body: "Story of the ghost " * 50, author_email: 'trey@phish.com', votes: 10 }
      }

      specify { expect{ request }.to raise_error(ActionController::ParameterMissing) }
    end

    context 'when invalid params' do
      let(:params) {
        { story: {
          title: 'A', body: "B", author_email: 'C' }
        }
      }

      describe 'response' do
        before { request }

        it { is_expected.to_not be_redirect }

        specify { expect(flash[:alert]).to_not be_nil }
      end

      specify { expect{ request }.to_not change{ Story.count } }
    end

  end
end
