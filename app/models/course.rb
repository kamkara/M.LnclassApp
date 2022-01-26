class Course < ApplicationRecord

  self.ignored_columns = ["material_id"]
  #RICH_TEXTT EDITOR
  has_rich_text :content

  #RELATIONS
  belongs_to :level
  belongs_to :material
  belongs_to :user
  has_many :exercices,
            dependent: :destroy
  has_many_attached :contentImg
  #VALIDATIONS
  validates :title,
            :content,
            :level_name,
            :material_name,
            :user_id,
            :slug, 
            presence: true
  

Course.all.with_rich_text_content # Preload the body without attachments.
Course.all.with_rich_text_content_and_embeds # Preload both body and attachments.


  #SLUG
  extend FriendlyId
    friendly_id :slugged_custom, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end

  def slugged_custom
    #Apprendre-a-calculer-les-limites-math-tleD
    "#{title} #{material_name} #{level_name}"
  end
end
