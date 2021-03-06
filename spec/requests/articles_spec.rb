require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/articles/index"
      expect(response).to have_http_status(:success)
    end
  end

  it 'returns a proper JSON' do
    article = create :article
    get '/articles'
    expect(json_data.length).to eq(1)
    expected = json_data.first
    aggregate_failures do
      expect(expected[:id]).to eq(article.id.to_s)
      expect(expected[:type]).to eq('article')
      expect(expected[:attributes]).to eq(
        title: article.title,
        content: article.content,
        slug: article.slug
      )
    end
  end

end
