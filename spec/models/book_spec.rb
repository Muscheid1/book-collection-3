require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid when book has title' do
    expect(Book.new(title: 'example title', author: 'example author')).to be_valid
  end

  it 'is invald when book does not have title' do
    book = Book.new(title: '')
    expect(book).not_to be_valid
  end

  it 'is valid when book has author' do
    expect(Book.new(author: 'example author', title: 'example title')).to be_valid
  end


  it 'is invalid when book does not have author' do
    expect(Book.new(author: '')).not_to be_valid
  end



end
