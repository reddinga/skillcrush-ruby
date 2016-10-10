class Pet

  attr_reader :pet_name, :owner_name
  attr_writer :pet_name, :owner_name

end

class Puppy < Pet
  def speak
    return "wooooof"
  end
end

class Kitty < Pet
  def speak
    return "meowwww"
  end
end

my_puppy = Puppy.new
my_puppy.pet_name = "Maple"
puppy_name = my_puppy.pet_name
puts "My puppy, #{puppy_name}, says '#{my_puppy.speak}'!"

puts my_puppy.inspect

my_kitty = Kitty.new
my_kitty.pet_name = "Fluffy"
kitty_name = my_kitty.pet_name
puts "My kitty, #{kitty_name}, says '#{my_kitty.speak}'!"

puts my_kitty.inspect
