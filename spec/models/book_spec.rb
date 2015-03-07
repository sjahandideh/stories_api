require 'rails_helper'

describe Book, type: :model do

  describe 'initialization and save' do

    context 'valid book' do
      let(:book) do
        Book.new(
          title: 'my sample book',
          genres: ['comedy', 'drama']
        )
      end
      subject { book.save }

      it { is_expected.to be_truthy }
      it { expect(book.chapters).to be_empty }
      it { expect(book.notes).to be_empty }
      it { expect(book.comments).to be_empty }
      it { expect(book.ratings).to be_empty }
      it { expect(book.authors).to be_empty }
      it { expect(book.followers).to be_empty }
    end
  end

  describe '.in_genre' do
    let!(:b1) { Book.create title: 'b1', genres: ['comedy', 'drama'] }
    let!(:b2) { Book.create title: 'b2', genres: ['fiction', 'drama'] }
    let!(:b3) { Book.create title: 'b3', genres: ['comedy'] }

    it 'returns all comedy books' do
      expect(Book.in_genre 'comedy').to eq [b1,b3]
    end

    it 'returns the one fiction book' do
      expect(Book.in_genre 'fiction').to eq [b2]
    end

    it 'returns empty for nil' do
      expect(Book.in_genre nil).to be_empty
    end
  end
end
