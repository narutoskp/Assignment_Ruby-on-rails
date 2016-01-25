class Article < ActiveRecord::Base

	has_many :customers, dependent: :destroy
	
	has_many :employees, dependent: :destroy

	validates :floor, presence: true,
                    length: { maximum: 3 }
end
