json.array!(@blog_articles) do |blog_article|
  json.extract! blog_article, :id, :title, :description
  json.url blog_article_url(blog_article, format: :json)
end
