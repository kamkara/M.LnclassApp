class CityErea < ApplicationRecord
  belongs_to :user

  ############## SLUG #############
  extend FriendlyId
  friendly_id :slugged_custom, use: :slugged

  def should_generate_new_friendly_id?
    title_changed? || super
  end

  def slugged_custom
    #{school_name.nick_name} #
    "from #{title}"
  end
end
