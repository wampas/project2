require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do

 describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end


    describe '#index' do
    	let!(:article) { FactoryGirl.create(:article) }

      before(:example) do
    		get :index
    	end

    	before(:context) do
    		FactoryGirl.create(:article)
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

# # #       # it 'displays a list of articles'  
    end
    
    
#     describe '#new' do
#       before { get :new }

#       it 'returns 200' do
#         expect(response).to be_success
#       end
        
#       it 'renders articles/new' do
#         expect(response).to render_template 'articles/new'
#       end

#       it 'assigns @article' do
#       	expect(assigns(:articles)).to be_a Article
#       	expect(assigns(:articles)).not_to be_persisted
#       end
#     end
# end

      
      
      
      
      
#     describe '#create' do
#       before do
#       post :create, article: {
#           title: 'text', body: 'text'
#           }
#     end
    
end
