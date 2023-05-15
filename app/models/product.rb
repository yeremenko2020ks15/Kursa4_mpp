class Product < ApplicationRecord
  has_many_attached :images

  belongs_to :pr_alcohol, optional: true
  belongs_to :pr_brand, optional: true
  belongs_to :pr_category, optional: true
  belongs_to :pr_color, optional: true
  belongs_to :pr_country, optional: true
  belongs_to :pr_endurance, optional: true
  belongs_to :pr_sub_category, optional: true
  belongs_to :pr_sweetness, optional: true
  belongs_to :pr_volume, optional: true

  has_many :orderables
  has_many :carts, through: :orderables

  def to_s
    self.pr_name
  end
end
