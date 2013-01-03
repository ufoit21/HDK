class Schedule < ActiveRecord::Base
	
  	attr_accessible :Month, :acctual_man_days, :assigned_project_id, :plan_man_days, :statue, :week, :year
    
    belongs_to :assigned_project
    has_many :users, :through => :assigned_projects
    has_many :projects, :through => :assigned_projects

   	validates :Month, :numericality => { :only_integer => true,:greater_than=>0, :less_than =>12 }
   	validates :year, :numericality => { :only_integer => true,:greater_than=>2011 }
   	validates :week, :numericality => { :only_integer => true,:greater_than=>0, :less_than =>5 }
   	validates :plan_man_days, :numericality => { :only_integer => true,:greater_than=>0}
   	validates :acctual_man_days, :numericality => { :only_integer => true,:greater_than=>0}

    
end
