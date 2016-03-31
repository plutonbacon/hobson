unless Enumerable.method_defined? :sum
  #
  module Enumerable
    # Sums the elements of a collection by invoking their `+` method.
    #
    # The sum method is completely generic, it can work on any objects
    # that respond to `+`.
    #
    #   ["a", "b", "c"].sum #=> "abc"
    #
    # It is a good idea to provide a default value. The default value also
    # acts as an initial value.
    #
    #   [].sum              #=> nil
    #   [].sum(9)           #=> 9
    #
    # @param identity [Object] an optional default return value if there
    #   are no elements. It is nil by default.
    # @return The sum of the elements or the default value if there are no
    #   elements.
    def sum(identity = nil)
      reduce(&:+) || identity
    end # def sum
  end # module Enumerable
end
