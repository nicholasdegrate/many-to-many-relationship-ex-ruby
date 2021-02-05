class Squirrel

    # getter
    attr_reader :name

    # class variables
    @@all = []

    def initialize(name)
      # instance variables
      @name = name
      # [] << class instance
      @@all << self #=> tree
    
    end


    # class method
    # self.all #=> Tree.all
    def self.all
        @@all #-> []
    end

    def make_nest(tree)
                # self #=> class Squirrel
                        # tree is the var ex: pine or apple tree
        Nest.new(self, tree)
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
            variable.squirrel #=> return Nest.all
            variable.squirrel == self #=> return => [
                        #<Nest:0x00007fdd6586d388
                        @squirrel=#<Squirrel:0x00007fdd6586d400 @name="jimmy">,
                        @tree=#<Tree:0x00007fdd6586d5e0 @height="20ft", @type="apple">>
                    # ]
        # }

=end
        Nest.all.select { |nest| 
            nest.squirrel == self
        }
    end

    def which_trees
        # instance method => my_nest
        my_nests.map { |nest|
                # tree => class Tree => type 
            nest.tree.type
        }
    end
end