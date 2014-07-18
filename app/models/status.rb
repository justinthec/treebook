class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  validates :content, presence: true,
  					  length: {minimum: 2}
  					  # format: {
  					  	# with: /\A..+\Z/,
  					  	# message: "must be at least 2 characters"
  					  # } R.I.P. My Regex child

  validates :user_id, presence: true

end
