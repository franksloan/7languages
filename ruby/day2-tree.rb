# Change defined tree class to take in a nested hash
# Previously it took in a name and the children in an array
# visit and visit_all don't need to change
class Tree
	attr_accessor :nested, :children, :node_name

	def initialize(nested={})
		@children = []
		nested.each do |name, children_nodes|
			@node_name = name
			@children_nodes = children_nodes
			children_nodes.each do |child_name, child_node|
				@children.push(Tree.new({child_name => child_node}))
			end
		end
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block }
	end

	def visit(&block)
		puts self
		block.call self
	end
end

tree = Tree.new({'a' => {'b' => {'c' => {}, 'e' => {}}, 'g' => {'h' => {}, 'j' => {}}}})


tree.visit_all {|node| puts node.node_name}