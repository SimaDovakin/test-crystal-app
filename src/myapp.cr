require "kemal"

get "/" do
  "<h1>Hello World!!!</h1>"
end

get "/another-section" do
  "<h1>Just another section</h1>"
end

get "/users/:name" do |env|
  name = env.params.url["name"]
  render "src/views/hello.ecr"
end

get "/list" do
  list = ["first", "second", "third", "fourth", "fifth"]
  render "src/views/list.ecr"
end

Kemal.run
