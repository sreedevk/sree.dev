class Config < ApplicationRecord
  WEBSITE = "website"
  PROFILE = "profile"
  SOCIAL = "social"
  MENU = "menu"
  validates_inclusion_of :config_type, in: [PROFILE, WEBSITE, SOCIAL, MENU]
  validates_uniqueness_of :config_type
  validates_presence_of :config_type

  def self.method_missing(config_type)
    settings = self.find_by(config_type: config_type)&.settings 
    if settings.is_a?(Hash)
      return settings.to_h.with_indifferent_access
    elsif settings.is_a?(Array) && settings.all?{|setting_obj| setting_obj.is_a? Hash }
      return settings.map(&:with_indifferent_access)
    else
      return settings
    end
  end
end
