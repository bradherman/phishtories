require 'rails_helper'

RSpec.describe Story, type: :model do
  it { is_expected.to have_db_column(:body).of_type(:text) }
  it { is_expected.to have_db_column(:title).of_type(:string) }
  it { is_expected.to have_db_column(:author).of_type(:string) }
  it { is_expected.to have_db_column(:author_location).of_type(:string) }
  it { is_expected.to have_db_column(:author_email).of_type(:string) }
  it { is_expected.to have_db_column(:venue).of_type(:string) }
  it { is_expected.to have_db_column(:location).of_type(:string) }
  it { is_expected.to have_db_column(:date).of_type(:date) }
  it { is_expected.to have_db_column(:period).of_type(:integer) }
  it { is_expected.to have_db_column(:votes).of_type(:integer).with_options(default: 0) }
  it { is_expected.to have_db_column(:flagged).of_type(:boolean).with_options(default: false) }
  it { is_expected.to have_db_column(:removed).of_type(:boolean).with_options(default: false) }
  it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
end
