module BookDecorator
  class Base
    def initialize(opts = {})
      @opts = opts
    end

    #class << self
      def isbn; ""; end
      def title; ""; end
      def tome; ""; end
      def author; ""; end
      def editor; ""; end
      def release_date; ""; end
    #end
  end
end
