class RiskizationsController < ApplicationController
validates :mpred, :presence => true, :on => :update
 
 attr_accessible :rver, :rposl
 
 attr_reader :totalpoint
 
 

  def totalpoint
    rver + rposl
  end
  
end
