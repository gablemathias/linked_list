require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
puts list
list.prepend('bird')
puts list
puts list.pop.value
puts list
puts list.tail.value
puts list.head.value
puts list.contains?('nemo')
puts list.contains?('hamster')
puts list
puts list.find('parrot')
