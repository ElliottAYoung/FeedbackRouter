# FeedbackRouter

A Gem designed to route all of the Feedback from all of your Rails Apps to one convenient location for you to easily view and integrate.

## Installation

Add this line to your application's Gemfile:

    gem 'feedback_router'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install feedback_router

Once the Gem is installed you have to create an environment of the location that the feedback will be sent to. The environment variable must be called ```ENV['FEEDBACK_LOCATION']``` and should reflect the entire URL of where the data is being sent (for example ```http://localhost:3000/example_route```).

Now in whatever app you want your feedback sent to, add the following line to your application_controller.rb file:

    protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
    
This will allow the feedback_router gem to send data through to your create method.

#Usage

Now all you have to do is call the gem after the feedback params have been given, like so:

    FeedbackRouter.send(feedback_params, "Name of Application")
    
Where "Name of Application" is the name of the Rails App sending the feedback.

## Contributing

1. Fork it ( https://github.com/ElliottAYoung/feedback_router/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
