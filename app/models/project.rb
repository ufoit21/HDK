class Project < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :users, :through => :assigned_projects
  has_many :assigned_projects, dependent: :destroy
  has_many :schedules, :through => :assigned_projects

end
