require 'rails_helper'

RSpec.describe User, :type => :model do

    describe 'Attributes' do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :email}
    it { is_expected.to respond_to :password }
  end

  describe 'Database' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email}
    it { is_expected.to have_db_column :password}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name}
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }

  end










>>>>>>> 0b75260c23393a6be2eaef761c50bc12040a3c69
end
