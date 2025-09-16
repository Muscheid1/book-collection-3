require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid when book has all attributes' do
    expect(Book.new(title: 'example title', author: 'example author', price: 2.35, published_date: Date.new(2025, 9, 11) )).to be_valid
  end

  it 'is invalid when book does not have title' do
    expect(Book.new(title: '', author: 'example author', price: 2.35, published_date: Date.new(2025, 9, 11) )).not_to be_valid
  end

  it 'is invalid when book does not have author' do
    expect(Book.new(title: 'example title', author: '', price: 2.35, published_date: Date.new(2025, 9, 11) )).not_to be_valid
  end

  it 'is invalid when book does not have price' do
    expect(Book.new(title: 'example title', author: 'example author', published_date: Date.new(2025, 9, 11) )).not_to be_valid
  end

  it 'is invalid when book does not have date' do
    expect(Book.new(title: 'example title', author: 'example author', price: 2.35 )).not_to be_valid
  end
end
