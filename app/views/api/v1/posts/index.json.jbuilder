json.status "ok"
puts @posts.inspect
json.posts @posts.each do |post| 
json.extract! post, :id, :title, :body, :created_at
json.media rails_blob_path(post.media) if post.media.attached?

end