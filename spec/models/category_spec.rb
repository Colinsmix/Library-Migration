require 'spec_helper'

describe Category do
  it { should validate_presence_of(:name) }
  it { should have_many(:categorizations) }
  it "Seeds the data properly" do
    expect(Category.seed).to be_true
  end
end
