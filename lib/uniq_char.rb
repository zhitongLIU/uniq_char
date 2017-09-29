require 'uniq_char/identity'

#
class String
  def first_uniq_char
    # easiest implementation to get the first char which has only one count
    # O(n^2) worst case, best 1
    #
    # Example:
    #   >> 'aabbce'.first_uniq_char
    #   => c
    #
    # Arguments:
    #
    each_char.find { |c| count(c) == 1 }
  end

  def first_uniq_char2
    # liner implementation
    # O(2n) worst case, best n + 1
    #
    # Example:
    #   >> 'aabbce'.first_uniq_char2
    #   => c
    #
    # Arguments:
    #
    nb_count = {}
    chars.each { |c| nb_count[c] = nb_count[c].nil? ? 1 : nb_count[c] + 1 }
    couple = nb_count.find { |_k, v| v == 1 }
    # return the key of the key value couple(the first one in the couple)
    couple.nil? ? nil : couple.first
  end
end
