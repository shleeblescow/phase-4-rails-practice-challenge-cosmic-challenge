class Mission < ApplicationRecord
    
    belongs_to :scientist
    belongs_to :planet

    validates :name, :planet, presence: true
    validates :scientist, presence: true, uniqueness: true

end