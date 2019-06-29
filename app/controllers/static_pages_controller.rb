class StaticPagesController < ApplicationController
  def index
    @blog_posts = BlogPostLocal.all
    @testimonials = Testimonial.all
    @skills = Skill.all
    @career_snapshots = CareerSnapshot.all
    @education = EducationSnapshot.all
    @services = Service.all
    @projects = Project.all
  end

  def receive_message
    @message = Message.new(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:full_name, :email, :text)
  end
end
