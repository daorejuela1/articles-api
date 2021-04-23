require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do

    let(:article) {build(:article)}

    it 'Factory has been put correctly' do
      expect(article.title).to eq('Sample title')
    end

    it 'Article without title' do
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end

    it 'Article without conten' do
      article.content = ''
      expect(article).not_to be_valid
      expect(article.errors[:content]).to include("can't be blank")
    end

    it 'Article without slug' do
      article.slug = ''
      expect(article).not_to be_valid
      expect(article.errors[:slug]).to include("can't be blank")
    end
  end
end
