require "ecr/macros"
require "kemal/param_parser"

module Railslike
  module Controllers
    abstract class BaseController
      def initialize(@env : HTTP::Server::Context); end

      # Render instance view within layout
      def render(instance : BaseController)
        LayoutController.new(env, instance).render
      end

      # This is what the router will call
      def self.to_proc
        ->(env : HTTP::Server::Context){
          controller = new(env)         # Evaluated in other controller context of type BaseController
          controller.render(controller) # Pass context into layout renderer
        }
      end

      # Class name
      def name
        self.class.name.split("::").last
      end

      # Defines to_s and automatically gets view file name based on controller's class name
      ECR.def_to_s \
        "#{`pwd`.chomp}/app/views/" +
        @type.name.id.
        split("::").last.
        split("Controller").first.
        downcase +
        ".ecr"

      # In the application template `content` is what is rendered in the body of the page.
      # We need to have the to_s from the inherited class called as the content.
      # This is the sole reason BaseController is an abstract class.
      macro inherited
        def content; self.to_s end
      end
      private getter :env
    end
  end
end
