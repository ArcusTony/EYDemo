class Site < ActiveRecord::Base
  attr_accessible :lat, :long, :manager, :name, :plotsMax, :plotsUsed

  def getAllNames 
    allSites = Site.all
    nameList = '' 
    for _Site in allSites
      nameList += _Site.name + ';'
    end
    return nameList
  end

end
