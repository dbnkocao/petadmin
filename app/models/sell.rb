class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  validates :client, presence: true
  
  def fae_display_field
    
  end

  def self.for_fae_index
    order(:date)
  end

  belongs_to :discount
  belongs_to :client
end
