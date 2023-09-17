class Company < ApplicationRecord

    after_initialize :init
    attr_accessor :cities
    
    def init

        self.cities = [
            "Los Angeles",
            "Long Beach",
            "San Diego",
            "Palm Springs",
            "San Bernardino",
            "Ventura",
            "Hollywood",
        ]

    end

end
