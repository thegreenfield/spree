class Spree::Tracker < ActiveRecord::Base
  def self.current
    first(:conditions => { :active => true, :environment => Rails.env })
  end
end
