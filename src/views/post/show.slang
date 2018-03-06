h1 = post.title
p = post.body


p
  == link_to("back", "/posts", class: "btn btn-success btn-xs")
  == link_to("edit", "/posts/#{post.id}/edit", class: "btn btn-success btn-xs")
  == link_to("delete", "/posts/#{post.id}?_method=delete&_csrf=#{csrf_token}", class: "btn btn-danger btn-xs", onclick: "return confirm('Are you sure?');")


== form(action: "/post_comments", method: :post) do
  == csrf_tag
  div.form-group
    == hidden_field name: "post_id", value: post.id
  div.form-group
    == text_area(name: "body", content: "", placeholder: "Body", class: "form-control", size: "30x10")
  == submit("Submit", class: "btn btn-primary btn-xs")
  == link_to("back", "/post_comments", class: "btn btn-default btn-xs")
