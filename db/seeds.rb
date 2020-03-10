Config.find_or_create_by(config_type: Config::SOCIAL).update(
  settings: [
    { name: "facebook", url: "https://facebook.com/%s", identifier: "sreedevness", icon_class: "ti-facebook" },
    { name: "twitter", url: "https://twitter.com/%s", identifier: "devtechnica", icon_class: "ti-twitter" },
    { name: "github", url: "https://github.com/%s", identifier: "sreedevk", icon_class: "ti-github" },
    { name: "instagram", url: "https://instagram.com/%s", identifier: "sreedevness", icon_class: "ti-instagram" }
  ]
)

Config.find_or_create_by(config_type: Config::MENU).update(
  settings: [
    { display_name: "Home", url: "/", link_options: [] },
    { display_name: "About", url: "/about", link_options: [] },
    { display_name: "Blog", url: "https://www.devtechnica.com", link_options: ["target=\"_blank\""] },
    { display_name: "Resume", url: "/resume_of_sreedev_kodichath.pdf", link_options: ["download", "style=\"color: #FA9E2E;\""] },
    { display_name: "Contact", url: "/contact", link_options: [] }
  ]
)

Config.find_or_create_by(config_type: Config::PROFILE).update(
  settings: {
    first_name: "Sreedev",
    last_name: "Kodichath",
    email: "sreedev@icloud.com",
    title: "Software Engineer",
    mobile: "+91-9600928275",
    alt_mobile: "+91-7760840660",
    address: "Bengaluru, India.",
    basic_intro: "I'm a passionate software engineer based in <i>Bengaluru, <small> KA (IN)</small></i>, focused on innovating viable, robust and user-focused solutions across industries by way of building high quality web applications and backend services for various platforms.",
    about: "<p>Hi I am <strong>Sreedev Kodichath</strong> a software engineer current working in <strong>Bengaluru, India</strong>. Programming is not just a profession to me. I thrive on the pleasure in innovating and implementing software solutions across industries. </p>
        <p>My work has never been restricted to a single platform or industry and this I believe has given me a plethora opportunities to expand my horizons expiditiously </p>
        <p>I am an ardent adovacate of open source software and strongly believe that it has the power to work miracles. Moreover, the transparency offered by open source software is necessary to abolish the stereotypical skepticism associated with technology and gadgetry. </p>"
  }
)

Config.find_or_create_by(config_type: Config::WEBSITE).update(
  settings: {
    logo: ""
  }
)

Skill.find_or_create_by(title: "API Development & Integration").update(proficiency: 90, weight: 1, color: "#fdb157", show: true)
Skill.find_or_create_by(title: "Software Architecture & Planning").update(proficiency: 60, weight: 2, color: "#9473e6", show: true)
Skill.find_or_create_by(title: "Web Application Development").update(proficiency: 80, weight: 3, color: "#bdecf6", show: true)
Skill.find_or_create_by(title: "Web Application Design").update(proficiency: 70, weight: 4, color: "#ffbcaa", show: true)

# CareerSnapshot.destroy_all
CareerSnapshot.find_or_create_by(company_name: "Infineye Technologies", date_of_joining: Date.strptime("26-12-2017", "%d-%m-%Y")).update(
  date_of_resignation: Date.strptime("04-02-2018", "%d-%m-%Y"),
  location: "TN, IN.",
  designation: "Software Developer",
  logo: "experience/icon-1.png",
  order: 4,
  visible: true
)

CareerSnapshot.find_or_create_by( company_name: "HousingMan.com", date_of_joining: Date.strptime("05-02-2018", "%d-%m-%Y")).update(
  date_of_resignation: Date.strptime("14-02-2019", "%d-%m-%Y"),
  location: "KA, IN.",
  designation: "Software Engineer",
  logo: "experience/icon-2.png",
  order: 3,
  visible: true
)

CareerSnapshot.find_or_create_by( company_name: "Riskcovry.com (UMBO IDTech Pvt. Ltd)", date_of_joining: Date.strptime("18-02-2019", "%d-%m-%Y")).update(
  date_of_resignation: DateTime.strptime("20/01/2020", "%d/%m/%Y"),
  location: "KA, IN.",
  designation: "Software Engineer",
  logo: "experience/icon-3.png",
  order: 2,
  visible: true
)

CareerSnapshot.find_or_create_by( company_name: "Tarka Labs (Sedin Technologies)", date_of_joining: Date.strptime("22-02-2020", "%d-%m-%Y")).update(
  date_of_resignation: nil,
  location: "KA, IN.",
  designation: "Senior Software Engineer",
  logo: "experience/icon-1.png",
  order: 1,
  visible: true
)

EducationSnapshot.find_or_create_by( institution: "Our Own English High School", course: "Senior Secondary Education").update(
  location: "Sharjah, AE.",
  show: true,
  order: 2,
  date_of_graduation: Date.strptime("08/04/2015", "%d/%m/%Y")
)

EducationSnapshot.find_or_create_by( institution: "Bharathiar University", course: "Bachelor of Commerce").update(
  location: "Coimbatore, IN.",
  show: true,
  order: 1,
  date_of_graduation: Date.strptime("01/08/2018", "%d/%m/%Y")
)

Service.find_or_create_by(title: "Web Application Development").update(
  icon: "ti-palette",
  description: "Web applications using the latest and greatest technologies built around your business logic to provide innovative solutions to your business problems.",
  order: 1,
  show: true
)

Service.find_or_create_by(title: "API Solutions").update(
  icon: "ti-vector",
  description: "Development of high quality APIs for consumption on other platforms including but not limited to Android, iOS & native applications.",
  order: 2,
  show: true
)

Service.find_or_create_by(title: "Software Architecture Design").update(
  icon: "ti-panel",
  description: "Innovating state of the art software architecture models focused on solving problems at hand using only optimum resources.",
  order: 3,
  show: true
)


["portfolio/item-1.png", "portfolio/item-2.png", "portfolio/item-3.png", "portfolio/item-4.png", "portfolio/item-5.png" ].each_with_index do |image, index|
  Project.find_or_create_by(name: "Rand#{index.next}").update(
    image: image,
    url: "#",
    show: false,
    order: index.next,
    importance: 1
  )
end
