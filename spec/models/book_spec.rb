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

end
