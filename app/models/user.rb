class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  has_many :pins
  belongs_to :plan

  def is_candidate?
  	user_type == "Candidate"
  end

  def is_citizen?
  	user_type == "Citizen"
  end
end
