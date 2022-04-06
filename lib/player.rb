class Player

    attr_reader :hit_points

    def initialize
        @hit_points = 100
    end

    def hit_points
        @hit_points
    end

    def attacked
        @hit_points -= 5
    end
end