class ArticlePolicy < ApplicationPolicy
  attr_reader :user, :article

  def initialize(user, article)  #basic structure for every policy 
    @user = user
    @article = article
  end

  def edit?
  	# user.admin? or not record.published?
  	article.user == user #Allow only logged in user to edit. user on R is logged in. user on L created article
  	#check for proper syntax
  end

  def update? 
  	article.user == user
  end

  def destroy?
  	article.user == user
  end
end


