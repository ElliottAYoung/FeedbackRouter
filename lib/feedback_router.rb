require "feedback_router/version"

module FeedbackRouter
  def self.send(feedback_params, application_name)
    @base_url, @controller_route = set_up_destination
    @params      = set_params(feedback_params, application_name)
    send_request
  end

  private

  def self.set_up_destination
    matches = ENV['FEEDBACK_LOCATION'].match(/(https?:\/\/[\w._:-]+)(.*)/)
    base_url = matches[1], controller_route = matches[2]
  end

  def self.set_params
    feedback_params['app_name'] = application_name
  end

  def self.send_request
    conn = Faraday.new(:url => @base_url)
    conn.post @controller_route, @params
  end
end
