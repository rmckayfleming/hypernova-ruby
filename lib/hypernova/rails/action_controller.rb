require "hypernova/controller_helpers"

if defined?(ActiveSupport)
  ActiveSupport.on_load(:action_controller) do
    ActionController::Base.class_eval do
      include Hypernova::ControllerHelpers

      helper_method :render_react_component
    end
  end
end
