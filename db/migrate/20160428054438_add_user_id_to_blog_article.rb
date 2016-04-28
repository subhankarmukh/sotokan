class AddUserIdToBlogArticle < ActiveRecord::Migration
  def change
    add_reference :blog_articles, :user, index: true, foreign_key: true
  end
end
