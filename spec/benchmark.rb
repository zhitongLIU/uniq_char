require 'uniq_char'
require 'pp'
require 'benchmark'

def random_string nb_chars
  # use a to z and A to Z as threshold
  threshold = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
  # get random letter in threshold to generate a random string
  (0...nb_chars).map { threshold[rand(threshold.length)] }.join
end

def bench_mark_with str
  Benchmark.bm do |x|
    x.report('first_uniq_char') { str.first_uniq_char }
    x.report('first_uniq_char2') { str.first_uniq_char2 }
    x.report('uniq_chars.first') { str.uniq_chars.first }
  end
end

pp 'Benchmark with 50 chars'
bench_mark_with(random_string(50))

pp 'Benchmark with 500 chars'
bench_mark_with(random_string(500))

pp 'Benchmark with 5000 chars'
bench_mark_with(random_string(5000))

# "Benchmark with 50 chars"
#        user     system      total        real
# first_uniq_char  0.000000   0.000000   0.000000 (  0.000014)
# first_uniq_char2  0.000000   0.000000   0.000000 (  0.000028)
# uniq_chars.first  0.000000   0.000000   0.000000 (  0.000052)
# "Benchmark with 500 chars"
#        user     system      total        real
# first_uniq_char  0.000000   0.000000   0.000000 (  0.000180)
# first_uniq_char2  0.000000   0.000000   0.000000 (  0.000234)
# uniq_chars.first  0.000000   0.000000   0.000000 (  0.000232)
# "Benchmark with 5000 chars"
#        user     system      total        real
# first_uniq_char  0.000000   0.000000   0.000000 (  0.003596)
# first_uniq_char2  0.000000   0.000000   0.000000 (  0.001695)
# uniq_chars.first  0.000000   0.000000   0.000000 (  0.001970)

# Conclusion:
# Second & third implementation is better when having more characters
