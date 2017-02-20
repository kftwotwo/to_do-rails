require 'rails_helper'

describe Task do
  it { should validate_presence_of :description }
  it { should belong_to :list }

  it 'will show that list is being created' do
    list = FactoryGirl.create(:list)
    list.name.should eq "List"
  end
end
