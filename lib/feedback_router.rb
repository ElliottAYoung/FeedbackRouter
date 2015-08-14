require "feedback_router/version"

module FeedbackRouter
  def self.send(feedback_object, application_name)
    @destination = ENV['FEEDBACK_LOCATION']
    
  end
end
