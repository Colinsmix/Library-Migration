require 'spec_helper'

describe Book do
  let!(:book1) { FactoryGirl.create(:book)}
  it { should validate_presence_of :title}  
  it { should validate_presence_of :author}  
  it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:rating).is_less_than_or_equal_to(100) }
  it { should have_valid(:rating).when(nil) }
  it { should have_one :checkout}
  it { should validate_uniqueness_of(:title).scoped_to(:author)}
  it { should have_many(:categorizations) }
  
  context 'seeder' do
    it "Seeds the data properly" do
      count = Book.count
      Book.seed
      expect(Book.count).to_not eql(count)
    end
    
    it "does not duplicate data" do
      Book.seed
      count = Book.count
      Book.seed
      expect(Book.count).to eql(count)
    end
  end

  


end
