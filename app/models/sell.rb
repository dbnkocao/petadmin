class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  validates :client, presence: true
  has_many :sell_products
  has_many :products, through: :sell_products

  has_many :sell_services
  has_many :services, through: :sell_services
  
  def fae_display_field
    
  end

  def self.for_fae_index
    order(:date)
  end

  belongs_to :discount
  belongs_to :client
end
