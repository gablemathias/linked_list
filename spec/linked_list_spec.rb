require_relative '../lib/linked_list'

RSpec.describe LinkedList do
  let(:list) { LinkedList.new.append('node1').append('node2') }

  context 'When adding new values to the list' do
    it 'Adds a new node to the end of the list' do
      result = list.append('node3').head.next_node.next_node
      expect(result.value).to eq('node3')
    end

    xit 'Adds a new node to the beginning of the list' do
    end
  end
end
