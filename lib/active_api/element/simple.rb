module ActiveApi
  module Element
    class Simple

      attr_reader :text, :node
      def initialize(text, options)
        @text = text
        @node = options[:node]
      end

      def build_xml(builder)
        builder.send node, text
      end

    end
  end
end