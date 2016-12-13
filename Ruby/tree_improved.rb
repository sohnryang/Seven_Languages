class Tree
    attr_accessor :children, :node_name

    def initialize(hash)
        @children = []
        hash.each_pair do |key, value|
            add_child(hash)
        end
    end

    def add_child(hash)
        hash.each_pair do |key, value|
            @children.push(key)
            if value.length > 0
                add_child(value)
            end
        end
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new( "Ruby",
                     [Tree.new("Reia"),
                      Tree.new("MacRuby")])

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
