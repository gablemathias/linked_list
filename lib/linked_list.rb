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

  def prepend(node)
    if head.nil?
      @head = create(node)
      return self
    end

    old_head = head # A node
    @head = create(node)
    @head.next_node = old_head
  end

  def size
    current_node = head
    count = 0

    loop do
      break if current_node.nil?

      count += 1
      current_node = current_node.next_node
    end

    count
  end

  def tail
    current_node = head

    current_node = current_node.next_node until current_node.next_node.nil?

    current_node
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
