class ArticlePolicy < ApplicationPolicy
  attr_reader :user, :article

  def initialize(user, article)  #basic structure for every policy 
    @user    = user
    @article = article
  end

  def edit?
    #Allow only logged in user to edit.
  	article.user == user  
  end

  def update? 
  	edit?
  end

  def destroy?
  	edit?
  end
end


