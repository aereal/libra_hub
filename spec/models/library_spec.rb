require 'spec_helper'

describe Library do
  subject { FactoryGirl.build(:library) }

  describe 'validations' do
    context 'has no name' do
      subject { FactoryGirl.build(:library, :nameless) }

      it { should have(1).error_on(:name) }
    end

    context 'has name' do
      it { should_not have(1).error_on(:name) }
    end

    context 'with unique name' do
      let!(:another_library) { FactoryGirl.build(:library) }

      it { should_not have(1).error_on(:name) }
    end

    context 'with duplicated name' do
      let!(:another_library) { FactoryGirl.create(:library, name: subject.name) }

      it { should have(1).error_on(:name) }
    end
  end
end
