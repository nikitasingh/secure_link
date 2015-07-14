module SecureLink
  class Button
    def button_to_secured(name, options = {}, html_options = nil)
      url = url_for(options)
      check_url = url

      unless ENV["RAILS_RELATIVE_URL_ROOT"].blank?
        check_url = check_url.gsub(ENV["RAILS_RELATIVE_URL_ROOT"], "")
      end

      method = html_options ? html_options[:method] : nil

      if authorized?(check_url, method)
        return button_to_open(name, url, html_options)
      end

      return ""
    end
  end
end
