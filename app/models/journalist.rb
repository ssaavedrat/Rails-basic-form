class Journalist < ApplicationRecord
    # validacion de presencia de datos
    validates :name, :lastname, :specialty, presence: true
end
