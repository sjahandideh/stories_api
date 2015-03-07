require 'rails_helper'

describe Api::V1::BooksController do

  describe 'index' do
    let(:kate) { Author.create name: 'kate', nick_name: 'kk' }
    let(:john) { Author.create name: 'john', nick_name: 'little john' }

    let!(:b1) { kate.books.create title: 'book 1', genres: ['a'] }
    let!(:b2) { kate.books.create title: 'book 2', genres: ['a', 'b'] }
    let!(:b3) { kate.books.create title: 'book 3', genres: ['c', 'b'] }
    let!(:b4) { john.books.create title: 'book 1', genres: ['a'] }
    let!(:b5) { john.books.create title: 'book 2', genres: ['b'] }
    let!(:b6) { john.books.create title: 'book 3', genres: ['c'] }

    context 'guest user' do

      context 'books by genre' do
        before { get :index, format: :json, genre: 'a' }

        it { expect(response.status).to eql 200 }
        it { expect(response.body).to eql([b1, b2, b4].to_json) }
      end

      pending 'most popular books' do
        before { get :index, format: :json, popular: true }
      end
    end

    context 'author' do
      pending 'her finished books'
      pending 'her unfinished books'
    end

    context 'reader' do
      pending 'her following books'
    end
  end
end
