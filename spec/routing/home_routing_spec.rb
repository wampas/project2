require "rails_helper"

RSpec.describe HomeController, type: :routing do
	it 'routes to the index action' do
		expect(get('/home/index')).to route_to('home#index')
	end

	it 'routes the root path to the index action' do
		expect(get('/')).to route_to('home#index')
	end

  it 'routes to #show' do
    expect(get('/home/show')).to route_to('home#show')
  end
end
