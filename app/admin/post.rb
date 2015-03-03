ActiveAdmin.register Post do

  index do
    selectable_column
    column :photo do |post|
      link_to image_tag(post.photo.thumb.url), post.photo.url
    end
    column :user
    column :description
    column :created_at
    actions
  end

  permit_params :photo, :user_id, :description
end
