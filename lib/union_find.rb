class UnionFind
  attr_reader :objects

  def initialize number_of_objects
    @objects = []
    0.upto(number_of_objects - 1) do |index|
      @objects << index
    end
  end

  def connected? p, q
    @objects[p] == @objects[q]
  end

  def union p, q
    p = @objects[p]
    q = @objects[q]
    @objects.map!{ |obj| (obj == p) ? q : obj }
  end
end
