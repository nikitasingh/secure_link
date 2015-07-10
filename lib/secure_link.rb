require "secure_link/version"
require "secure_link/link"
require "secure_link/button"
require "secure_link/authorize"


module SecureLink
  def self.s_method
    ActionView::Base.class_eval {
        include SecureLink

        alias_method :link_to_unsecured, :link_to
        alias_method :button_to_unsecured, :button_to

        alias_method :link_to_open, :link_to
        alias_method :link_to, :link_to_secured

        alias_method :button_to_open, :button_to
        alias_method :button_to, :button_to_secured

      }

  end
end

