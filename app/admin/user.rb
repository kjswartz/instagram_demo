ActiveAdmin.register User do

  permit_params :avatar, :username, :name, :website, :bio

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


  form do |f|
    inputs do
      f.input :username
      f.input :name
      f.input :website, :hint => 'Use the format http://domainname.com'
      f.input :avatar
      f.input :bio, :hint => 'Please limit to 500', :as => :text, :input_html => { :rows => 10, :cols => 20,
      :maxlength => 500  }
      f.actions
    end
  end

end
