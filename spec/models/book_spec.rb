require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid when book has title' do
    expect(Book.new(title: 'example title')).to be_valid
  end

  it 'is invald when book does not have title' do
    book = Book.new(title: '')
    expect(book).not_to be_valid
  end
end
