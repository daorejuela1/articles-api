FactoryBot.define do
  factory :article do
    title { "Sample title" }
    content { "Sample content" }
    slug { "sample-content-url" }
  end
end
