class ReadDataStructure
  attr_reader :number_of_elements, :pairs

  def initialize(file)
    @file = file
    read_in_file
  end

  private

  def read_in_file
    File.open(@file, 'r') do |file|
      lines = file.readlines
      begin
        @number_of_elements = parse_line_for_num lines.shift
        @pairs = []
        is_valid_number_of_elements lines.size
        0.upto(@number_of_elements - 1) do |index|
          @pairs << parse_line_for_pair(lines[index])
        end
      rescue
      end
    end
  end

  def is_valid_number? number
    raise 'not a valid number' unless number.kind_of? Integer
  end

  def is_valid_number_of_elements array_size
    unless array_size >= @number_of_elements
      raise 'number of elements is not valid based on line size'
    end
  end

  def is_valid_pair? pair
    pair.each do |element|
      raise 'not a valid pair' unless element.kind_of? Integer
    end
  end

  def parse_line_for_num line
    num = line.scan(/\d+/).first.to_i
    is_valid_number? num
    num
  end

  def parse_line_for_pair line
    pair = line.scan(/\d+/).map{ |el| el.to_i }
    is_valid_pair? pair
    pair
  end
end

#require './read_data_structure'
#rds = ReadDataStructure.new('./tiny-uf.txt')
