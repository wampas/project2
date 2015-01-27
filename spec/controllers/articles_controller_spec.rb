require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do

  describe '#index' do    
  	let!(:article) { FactoryGirl.create(:article) }

    before(:example) do
      get :index
    end

		it 'returns 200' do
      expect(response).to be_success
    end

    it 'renders articles/index' do
    	expect(response).to render_template 'articles/index'
    end

    it 'assigns @article' do
    	expect(assigns(:article)).to eq Article.all
    end
  end

  describe '#new' do
    before { get :new }

      it 'returns 200' do
        expect(response).to be_success
      end
        
      it 'renders articles/new' do
        expect(response).to render_template 'articles/new'
      end

      it 'assigns @article' do
      	expect(assigns(:article)).to be_a Article
      	expect(assigns(:article)).not_to be_persisted
      end
    end
    

      
  describe '#create' do
    context 'valid params' do
      before do

        post :create, article: {
          title: 'murrica', body: 'f yeah'
        }
      end
  
      it 'assigns @article' do
        expect(assigns(:article)).to be_a Article
      end
  
      it 'persists the article' do
        expect(assigns(:article)).to be_persisted
      end
  
      it 'redirects to the article' do
        expect(response).to redirect_to article_path(Article.last)
      end
    end      
    
    context 'invalid params' do
      before do
        post :create, article: {
          # These params are invalid because they are blank,
          # so the article will not be created
          title: '', body: ''
        }
      end
  
      it 'assigns @article' do
        expect(assigns(:article)).to be_a Article
      end
  
      it 'does not persist the article' do
        expect(assigns(:article)).not_to be_persisted
      end
  
      it 'renders articles/new' do
        expect(response).to render_template 'articles/new'
      end
    end  
  end
      
end
