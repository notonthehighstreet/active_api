module ActiveApi
  module Element
    class Complex
      include Builder

      attr_reader :object, :node

      def initialize(object, options = {})
        @object = object
        @node   = options[:node]
        @options = options
      end

      protected

      def build(builder)
        builder.send node.to_s.singularize do |xml|
          definition = Schema.definitions.detect{|definition| definition.name.to_s == node.to_s.singularize}
          definition.fields.each do |field|
            element = field.klass.new value(field), :node => field.name
            element.build_xml(xml)
          end
        end
      end

      def value(field)
        field.value ? field.value.call(self) : object.send(field.name)
      end
    end
  end
end