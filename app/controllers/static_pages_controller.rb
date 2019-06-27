class StaticPagesController < ApplicationController
  def index
    @blog_posts = BlogPostLocal.all
    @testimonials = Testimonial.all
  end
end
