- if post.errors
  ul.errors
    - post.errors.each do |error|
      li = error.to_s

== form(action: "/posts/#{post.id.to_s}", method: post.id ? :patch : :post) do
  == csrf_tag
  div.form-group
    == text_field(name: "title", value: post.title, placeholder: "Title", class: "form-control")
  div.form-group
    == text_area(name: "body", content: post.body, placeholder: "Body", class: "form-control", size: "30x10")
  == submit("Submit", class: "btn btn-primary btn-xs")
  == link_to("back", "/posts", class: "btn btn-default btn-xs")
