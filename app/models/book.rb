class Book < ActiveRecord::Base

  def self.seed
    books = { "Smashing Node" => "Guillermo Rauch", "Eat People" => "Andy Kessler", "Animal Farm" => "George Orwell" }

    books.each do |title, author|
      book = Book.find_or_initialize_by(title: title)
      book.author = author
      book.rating = 99
      book.save
    end

  end

  validates_presence_of :title
  validates_presence_of :author

  validates_numericality_of :rating, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100, allow_blank: true

  validates_uniqueness_of :title, scope: :author

  has_one :checkout
  has_many :categorizations
end
