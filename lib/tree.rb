class Tree

    # getter and setter
    attr_accessor :type, :height

    # class variables
    @@all = []

    def initialize(type, height)
        # instance variables
        @type, @height = type, height
        # [] << class instance
        @@all << self #=> tree
    end

    # class method
    # self.all #=> Tree.all
    def self.all
        @@all #-> []
    end

    def my_nests
=begin 

        Nest.all return => #[ 
            #<Nest:0x00007fe56608e348
            @squirrel=#<Squirrel:0x00007fe56608e438 @name="billy">,
            @tree=#<Tree:0x00007fe56608e668 @height="40ft", @type="pine">>,
            #<Nest:0x00007fe56608e320
            @squirrel=#<Squirrel:0x00007fe56608e3c0 @name="jimmy">,
            @tree=#<Tree:0x00007fe56608e528 @height="20ft", @type="apple">>
        #]

        - doc https://apidock.com/ruby/Array/select

        # Nest.all.select { |variable|
            variable.tree #=> return Nest.all
            variable.tree == self #=> return => [
                        #<Nest:0x00007fdd6586d388
                        @squirrel=#<Squirrel:0x00007fdd6586d400 @name="jimmy">,
                        @tree=#<Tree:0x00007fdd6586d5e0 @height="20ft", @type="apple">>
                    # ]
        # }

=end
        Nest.all.select { |nest|
            nest.tree == self
        }
    end


    def how_many_nests
        # length of the array => []
        my_nests.length
    end
end