namespace :blog do
  desc "Fetch Blog Posts"
  task fetch: :environment do
    BlogPostLocal.destroy_all
    BlogPost.order(post_date: :desc).limit(3).each do |blog_post|
      BlogPostLocal.create!(
        title: blog_post.post_title,
        abstract: blog_post.post_excerpt,
        published_on: blog_post.post_date,
        url: blog_post.guid,
        remote_id: blog_post.id,
        image: blog_post.thumbnail
      )
    end
  end
end
