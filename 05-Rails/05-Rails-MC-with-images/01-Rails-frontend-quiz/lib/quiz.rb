def rails_app
  # TODO: Return a `String` with the right command to create a new rails app called `watch-list`.
  return "rails new watch-list"
end

def modern_javascript
  # TODO: Return a `String` of what you have to add to `application.html.erb` if you want to import
  # the JavaScript file `application.js` that is inside of `app/javascript`
  return "<%= javascript_include_tag 'application' %>"
end

def add_a_npm_package
  # TODO: Return a `String` with the command to type in the terminal to add the npm package `sweetalert`
  # to your rails app.
  return "yarn add sweetalert"
end
