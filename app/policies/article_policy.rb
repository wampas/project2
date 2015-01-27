class ArticlePolicy < ApplicationPolicy
  attr_reader :user, :article

  def initialize(user, article)  #basic structure for every policy 
    @user = user
    @article = article
  end

  # def edit?
  # 	article.user == user
  # end

  def update?
    # edit?
  user.admin? or not post.published?
  end

  def destroy?
  	edit?
  end
end