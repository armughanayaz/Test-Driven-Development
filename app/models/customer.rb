class Customer < ApplicationRecord
     belongs_to :user, optional: true
     belongs_to :address
     has_many :interventions
     has_many :buildings
     has_many :leads

end
