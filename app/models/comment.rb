class Comment < ApplicationRecord
    belongs_to :mountain_model
    belongs_to :user
end
