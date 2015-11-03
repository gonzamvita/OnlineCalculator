class Memory
  def initialize(number)
    @number = number
  end

  def save_number_in_file
    IO.write("../public/memory.txt", @number)
  end

  def get_number_from_file
    IO.read("../public/memory.txt")
  end
end
