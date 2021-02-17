json.status "ok"
json.extract! @post, :id, :title, :body, :created_at
json.media rails_blob_path(@post.media) if @post.media.attached?
