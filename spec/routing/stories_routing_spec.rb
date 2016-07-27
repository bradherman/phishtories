require 'spec_helper'

describe StoriesController, type: :routing do
  specify { expect(get('/stories')).to        route_to('stories#index') }
  specify { expect(get('/stories/new')).to    route_to('stories#new') }
  specify { expect(post('/stories')).to       route_to('stories#create') }
  specify { expect(get('/stories/1')).to      route_to('stories#show', id: '1') }
  specify { expect(get('/stories/1/edit')).to route_to('stories#edit', id: '1') }
  specify { expect(put('/stories/1')).to      route_to('stories#update', id: '1') }
  specify { expect(delete('/stories/1')).to   route_to('stories#destroy', id: '1') }
end
