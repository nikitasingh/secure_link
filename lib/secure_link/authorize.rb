module SecureLink
  class Authorize
    def authorized?(url, method = nil)
      return false unless url

      # Mailto link
      return true if url =~ /^mailto:/

      method ||= (params[:method] || request.method)
      url_parts = URI::split(url.strip)
      path = url_parts[5]
      return true if current_user && is_authorized?(path)

      begin
        hash = Rails.application.routes.recognize_path(path, :method => method)
        return is_authorized?(path_from_hash(hash)) if hash
      rescue Exception => e

      end
    end

    def is_authorized?(resource)
      all_permissions = Permission.get_permissions
      all_permissions.include?([resource, current_user.role])
    end
  end
end
