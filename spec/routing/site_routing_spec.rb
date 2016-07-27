require 'spec_helper'

describe SiteController do
  specify { expect(get('/')).to route_to('site#index') }
end