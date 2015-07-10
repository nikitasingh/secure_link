module SecureLink extend ActiveSupport::Concern
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
      # continue on
    end
  end

  def is_authorized?(resource)
    all_permissions = Permission.get_permissions
    user = MckinseyLdap::Person.find_by_exact_name(current_user)
    user = User.find_by_name(user.nil? ? current_user.name : user.unique_name)
    all_permissions.include?([resource, user.role])
  end
end
