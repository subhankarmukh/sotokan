module BlogArticlesHelper
	def get_blog_article_excerpt(entity, length = 250)
		truncate(CGI.unescapeHTML(entity.description).gsub(%r{</?[^>]+?>}, ''), :length => length, :escape => false, :omission => "... ")
	end
end
