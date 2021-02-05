
class Nest

    # getter
    attr_reader :squirrel, :tree

    # class variables
    @@all = []

    def initialize(squirrel, tree)
        # instance variables
        @squirrel, @tree, = squirrel, tree
        # [] << class instance
        @@all << self #=> tree
    end


    # class method
    # self.all #=> Tree.all
    def self.all
        @@all #-> []
    end

end
