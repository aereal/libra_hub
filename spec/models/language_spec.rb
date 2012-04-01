require 'spec_helper'

describe Language do
  subject { FactoryGirl.build(:language) }

  describe 'validations' do
    context "has name" do
      it { should be_valid }
    end

    context 'is nameless' do
      subject { FactoryGirl.build(:nameless_language) }

      it { should_not be_valid }
    end
  end
end
