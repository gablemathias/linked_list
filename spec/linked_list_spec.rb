require_relative '../lib/linked_list'

RSpec.describe LinkedList do
  let(:list) { described_class.new.append('node1').append('node2') }

  context 'when adding new values to the list' do
    it 'adds a new node to the end of the list' do
      result = list.append('node3').head.next_node.next_node
      expect(result.value).to eq('node3')
    end

    it 'adds a new node to the beginning of the list' do
      list.prepend('new_head')
      expect(list.head.value).to eq('new_head')
      expect(list.head.next_node.value).to eq('node1')
    end
  end

  context 'when iterating the list' do
    it 'checks the size of the list' do
      expect(list.size).to eq(2)
    end

    it 'returns the first node of the list' do
      expect(list.head.value).to eq('node1')
    end

    it 'returns the last node of the list' do
      expect(list.tail.value).to eq('node2')
    end

    it 'returns the node at given index' do
      expect(list.at(2)).to be_nil
      expect(list.at(1).value).to eq('node2')
    end

    it 'checks if a value is in the list' do
      expect(list.contains?('node2')).to be true
    end

    it 'returns a value from the list' do
      expect(list.find('node2')).to eq('node2')
      expect(list.find('not anymore')).to be_nil
    end
  end

  context 'when modifying the list' do
    it 'removes the last element of the list and returns it' do
      expect(list.pop.value).to eq('node2')
      expect(list.tail.value).to eq('node1')
    end

    it 'inserts a new node at a given index'
    it 'removes a node at the given index'
  end

  it 'prints the LinkedList objects as a String'
end
