1.upto(1000) do |post_index|
  post_prefix = post_index.to_s.rjust 4, '0'
  p = Post.create title: "##{post_prefix} Title", body: "body for post:#{post_prefix}"

  1.upto(5) do |comment_index|
    comment_prefix = comment_index.to_s.rjust 4, '0'
    p.comments << Comment.create(user: "##{comment_prefix} User", body: "body for comment:#{comment_prefix}")
  end
end