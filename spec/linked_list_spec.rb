require_relative '../lib/linked_list'

RSpec.describe LinkedList do
  let(:list) { LinkedList.new.append('node1').append('node2') }

  context 'When adding new values to the list' do
    it 'Adds a new node to the end of the list' do
      result = list.append('node3').head.next_node.next_node
      expect(result.value).to eq('node3')
    end

    it 'Adds a new node to the beginning of the list' do
      list.prepend('new_head')
      expect(list.head).to eq('new_head')
      expect(list.head.next_node).to eq('node1')
    end
  end

  context 'When iterating the list' do
    it 'Checks the size of the list'
    it 'Returns the first node of the list'
    it 'Returns the last node of the list'
    it 'Returns the node at given index'
    it 'Checks if a value is in the list'
    it 'Returns a value from the list'
  end

  context 'When modifying the list' do
    it 'Removes the last element of the list'
    it 'Inserts a new node at a given index'
    it 'Removes a node at the given index'
  end

  it 'Prints the LinkedList objects as a String'
end
