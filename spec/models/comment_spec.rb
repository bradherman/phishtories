require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'schema' do
    it { is_expected.to have_db_column(:body).of_type(:text) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:story_id).of_type(:integer) }
    it { is_expected.to have_db_column(:parent_id).of_type(:integer) }
    it { is_expected.to have_db_column(:flagged).of_type(:boolean).with_options(default: false) }
    it { is_expected.to have_db_column(:removed).of_type(:boolean).with_options(default: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }

    it { is_expected.to have_db_index(:user_id) }
    it { is_expected.to have_db_index(:story_id) }
    it { is_expected.to have_db_index(:parent_id) }
  end

  context 'normalizations' do
    it { is_expected.to normalize_attribute(:body) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:story_id) }
    it { is_expected.to validate_presence_of(:user_id) }
  end

  context 'associations' do
    it { is_expected.to have_many(:children) }
    it { is_expected.to have_many(:votes) }
    it { is_expected.to have_many(:flags) }
    it { is_expected.to belong_to(:parent) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:story) }
  end
end
