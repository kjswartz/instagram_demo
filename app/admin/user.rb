ActiveAdmin.register User do

  index do
    selectable_column
    column :avatar do |user|
      image_tag user.avatar.thumb.url
    end
    column :username
    column :name
    column "Posts" do |user|
      link_to user.posts.count, admin_posts_path(q: {user_id_eq: user.id})
    end
    column :website do |user|
      link_to "Visit", user.website
    end
    column :bio
    actions
  end

  permit_params :avatar, :username, :name, :website, :bio


end
