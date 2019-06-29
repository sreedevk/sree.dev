module StaticPagesHelper
  include ApplicationHelper
  def testimonial_author_image(testimonial)
    if testimonial.author_image.present?
      image_tag "testimonial/#{testimonial.author_image}", class: "img-fluid rounded-circle mb-4 d-inline-block", style: "width: 100px;"
    else
      image_tag "testimonial/testimonial_defalt_user.jpg", class: "img-fluid rounded-circle mb-4 d-inline-block", style: "width: 100px;"
    end
  end

end
