require 'spec_helper'

describe CommentsController, type: :routing do
  specify { expect(get('/comments/1/edit')).to  route_to('comments#edit', id: '1') }
  specify { expect(put('/comments/1')).to       route_to('comments#update', id: '1') }
  specify { expect(delete('/comments/1')).to    route_to('comments#destroy', id: '1') }
end
