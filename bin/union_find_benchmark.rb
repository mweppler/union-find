require 'benchmark'
require_relative '../lib/union_find'

Benchmark.bmbm do |x|
  x.report("union") do
    number_of_objects = 10000
    union_find = UnionFind.new(number_of_objects)
    0.upto(number_of_objects - 2) do |index|
      union_find.union(index, index + 1)
    end
  end
end
