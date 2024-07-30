require_relative '../lib/linked_list'

RSpec.describe LinkedList do
  let(:list) do
    list = LinkedList.new
    list.append('node1')
    list.append('node2')
  end
end
