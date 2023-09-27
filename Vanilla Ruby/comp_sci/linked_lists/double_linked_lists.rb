class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def size
    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next_node
    end
    count
  end

  def tail
    current = @head
    current = current.next_node while current.next_node
    current
  end

  def at(index)
    current = @head
    index.times { current = current.next_node if current }
    current
  end

  def pop
    return if @head.nil?

    if @head.next_node.nil?
      @head = nil
      return
    end

    current = @head
    current = current.next_node while current.next_node.next_node
    current.next_node = nil
  end

  def contains?(value)
    current = @head
    until current.nil?
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    index = 0
    current = @head
    until current.nil?
      return index if current.value == value
      current = current.next_node
      index += 1
    end
    nil
  end

  def to_s
    elements = []
    current = @head
    until current.nil?
      elements << "( #{current.value} ) ->"
      current = current.next_node
    end
    elements << " nil"
    elements.join(' ')
  end

  # Extra credit
  def insert_at(value, index)
    return if index > size

    new_node = Node.new(value)
    if index.zero?
      new_node.next_node = @head
      @head = new_node
      return
    end

    current = at(index - 1)
    new_node.next_node = current.next_node
    current.next_node = new_node
  end

  def remove_at(index)
    return if index >= size || index.negative?

    if index.zero?
      @head = @head.next_node
      return
    end

    current = at(index - 1)
    current.next_node = current.next_node.next_node
  end
end
