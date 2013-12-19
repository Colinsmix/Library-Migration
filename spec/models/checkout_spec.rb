require 'spec_helper'

describe Checkout do
  it { should validate_presence_of :book_id}
  it { should belong_to :book }
end