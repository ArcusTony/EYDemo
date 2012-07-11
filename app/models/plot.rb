class Plot < ActiveRecord::Base
  attr_accessible :disabledAccess, :length, :shed, :site, :size, :width
  
  validates :site, :presence => true
  
  has_many :tenancies


  def self.findBySite(site_name)
    plotSite = Site.where(:name => site_name).first
    plotsOnSite = Plot.where(:site => plotSite.id)
  
    return plotsOnSite
  end

end