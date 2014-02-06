class Comment < ActiveRecord::Base
  attr_accessible :article_id, :content, :name
  belongs_to :article
end
