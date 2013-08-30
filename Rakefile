require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "spec/*_spec.rb"
  t.verbose = true
end

task :default => :test

desc "Benchmark the union find algorithm."
task :benchmark do
  ruby "bin/union_find_benchmark.rb"
end
