require 'spec_helper'

describe Language do
  subject { FactoryGirl.build(:language) }

  describe 'validations' do
    context "has name" do
      it { should be_valid }
    end

    context 'is nameless' do
      subject { FactoryGirl.build(:language, :nameless) }

      it { should_not be_valid }
    end

    context 'with unique name' do
      let!(:exists_language) { FactoryGirl.create(:language) }

      it { should be_valid }
    end

    context 'with duplicated name' do
      subject { FactoryGirl.build(:language, name: exists_language.name) }

      let!(:exists_language) { FactoryGirl.create(:language) }

      it { should_not be_valid }
    end
  end
end
