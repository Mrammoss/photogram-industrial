module ApplicationHelper
  def only_host_and_path(url)
    uri = URI.parse(url)
    "#{uri.host}#{uri.path}"
  rescue URI::InvalidURIError, NoMethodError
    url
  end
end
