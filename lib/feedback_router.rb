require "feedback_router/version"

module FeedbackRouter
  def self.send(feedback_params, application_name)
    @destination = ENV['FEEDBACK_LOCATION']
    @params      = set_params(feedback_params, application_name)
    send_request
  end

  private

  def set_params
    feedback_params['app_name'] = application_name
  end

  def send_request
    
  end
end
