class BaseComponent < ViewComponent::Base
  Bridgetown::ViewComponentHelpers.allow_rails_helpers :tag
  include Bridgetown::ViewComponentHelpers
end
