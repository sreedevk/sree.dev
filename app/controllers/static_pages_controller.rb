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
    @message = Message.create(message_params)
    if (@message.persisted? && @message.errors.blank?)
      flash[:alert] = "Your Message Has been Successfully Sent!"
      flash[:icon] = "success_tick.gif"
    else
      flash[:icon] = "error.png"
      flash[:alert] = "We were unable to receive your message. Try again later."
    end
  end

  private

  def message_params
    params.require(:message).permit(:full_name, :email, :text)
  end
end
