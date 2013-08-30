require "minitest/autorun"
require_relative '../lib/union_find'

describe UnionFind do
  let :union_find do
    UnionFind.new(10)
  end

  describe "#new" do
    describe "when passed a number" do
      it "should build an array from 0 to N" do
        union_find.objects.must_equal [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
      end
    end
  end

  describe "#connected?" do
    describe "when passed two numbers" do
      it "should return true if the objects are connected." do
        union_find.connected?(0, 0).must_equal true
      end

      it "should return false if the objects not are connected." do
        union_find.connected?(0, 1).must_equal false
      end
    end
  end

  describe "#union" do
    describe "when passed two numbers" do
      it "should create a union/connection between the objects." do
        union_find.union(9, 4)
        union_find.connected?(4, 9).must_equal true
      end
    end
  end
end
