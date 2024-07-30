class LinkedList # rubocop:disable Style/Documentation
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
    if head.nil?
      @head = create(node)
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = create(node)
    end

    self
  end

  private

  def create(node)
    Node.new(node)
  end
end

class Node # rubocop:disable Style/Documentation
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
