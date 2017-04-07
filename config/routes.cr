require "../app/controllers/*"

module Railslike
  module Routes
    include Controllers

    get "/", &IndexController.to_proc

    error 404, &Error404Controller.to_proc
  end
end
