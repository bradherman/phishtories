require 'rails_helper'

RSpec.describe Story, type: :model do
  context 'schema' do
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:body).of_type(:text) }
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:author).of_type(:string) }
    it { is_expected.to have_db_column(:author_location).of_type(:string) }
    it { is_expected.to have_db_column(:author_email).of_type(:string) }
    it { is_expected.to have_db_column(:venue).of_type(:string) }
    it { is_expected.to have_db_column(:location).of_type(:string) }
    it { is_expected.to have_db_column(:date).of_type(:date) }
    it { is_expected.to have_db_column(:period).of_type(:integer) }
    it { is_expected.to have_db_column(:flagged).of_type(:boolean).with_options(default: false) }
    it { is_expected.to have_db_column(:removed).of_type(:boolean).with_options(default: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }

    it { is_expected.to have_db_index(:user_id) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_at_least(250) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:author_email) }
  end

  context 'normalizations' do
    %i(author location venue author_location date period).each do |attr|
      it { is_expected.to normalize_attribute(attr) }
    end
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:comments) }
  end
end
