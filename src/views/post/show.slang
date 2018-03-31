css:
  h4 {float: left;}
  h2 { margin: 1em 0; }
  span { display: inline; color: #999;float: left; margin-left: 10px }
  p { display: block; clear: both; margin-left: 1em }

h1 = post.title 
p = post.body 

h2 Comments

- post.post_comments.each do |comment| 
  h4 = comment.name 
  span = comment.created_at 
  p = comment.body 

== form(action: "/post_comments", method: :post) do
  == csrf_tag
  div.form-group
    == label(:post)
    == hidden_field(name: "post_id", value: "#{post.id}", class: "form-control")
  div.form-group
    == text_area(name: "name", content: "", placeholder: "Name", class: "form-control", size: "30x10")
  div.form-group
    == text_area(name: "body", content: "", placeholder: "Body", class: "form-control", size: "30x10")
  == submit("Submit", class: "btn btn-primary btn-xs")
  == link_to("back", "/post_comments", class: "btn btn-default btn-xs")
