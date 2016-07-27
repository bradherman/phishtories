require 'rails_helper'

RSpec.describe Flag, type: :model do
  context 'schema' do
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:flaggable_id).of_type(:integer) }
    it { is_expected.to have_db_column(:flaggable_type).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }

    it { is_expected.to have_db_index(:user_id) }
    it { is_expected.to have_db_index([:flaggable_type, :flaggable_id]) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:flaggable_id) }
    it { is_expected.to validate_presence_of(:flaggable_type) }
  end

  context 'assocations' do
    it { is_expected.to belong_to(:flaggable) }
    it { is_expected.to belong_to(:user) }
  end
end
