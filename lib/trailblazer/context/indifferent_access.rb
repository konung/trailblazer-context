module Trailblazer
  class Context
    class IndifferentAccess < Context
      def [](name)
        super(name.to_sym)
      end

      def []=(name, value)
        super(name.to_sym, value)
      end

      def key?(name)
        super(name.to_sym)
      end
    end
  end
end
