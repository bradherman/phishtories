require 'spec_helper'

describe SiteController, type: :routing do
  specify { expect(get('/')).to route_to('site#index') }
end
