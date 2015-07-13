require "secure_link/version"
require "secure_link/link"
require "secure_link/button"
require "secure_link/authorize"


module SecureLink
end

ActionView::Base.class_eval {
  include SecureLink

  alias_method :link_to, :link_to_secured
  alias_method :button_to, :button_to_secured
}


