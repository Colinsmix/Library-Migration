class Category < ActiveRecord::Base

  def self.seed
    categories = ['Horror', 'Romance', 'Action', 'Comedy']

    categories.each do |name|
      category = Category.find_or_initialize_by(name: name)
      category.save
    end
  end

  validates_presence_of :name

  has_many :books
  has_many :categorizations
end
