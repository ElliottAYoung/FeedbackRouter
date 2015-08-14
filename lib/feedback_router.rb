require "feedback_router/version"

module FeedbackRouter
  def self.send(feedback_params, application_name)
    @base_url, @controller_route = set_up_destination
    @params      = set_params(feedback_params, application_name)
    send_request
  end

  private

  def set_up_destination(url)
    matches = url.match(/(https?:\/\/[\w._:-]+)(.*)/)
    base_url = matches[1], controller_route = matches[2]
  end

  def set_params
    feedback_params['app_name'] = application_name
  end

  def send_request
    
  end
end
