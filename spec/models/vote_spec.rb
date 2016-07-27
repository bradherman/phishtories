require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'schema' do
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:voteable_id).of_type(:integer) }
    it { is_expected.to have_db_column(:voteable_type).of_type(:string) }

    it { is_expected.to have_db_index(:user_id) }
    it { is_expected.to have_db_index([:voteable_type, :voteable_id]) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:voteable_id) }
    it { is_expected.to validate_presence_of(:voteable_type) }
  end

  context 'assocations' do
    it { is_expected.to belong_to(:voteable) }
  end
end
