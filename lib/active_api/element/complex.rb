module ActiveApi
  module Element
    class Complex
      include Builder

      attr_reader :object, :node, :parents

      def initialize(object, options = {})
        @object = object
        @node   = options[:node]
        @parents = options[:parents] || {}
        @parents[node.to_s.singularize.to_sym] = object
      end

      protected

      def build(builder)
        builder.send "#{node.to_s.singularize}_", attributes do |xml|
          definition.elements.each do |field|
            name = field.name_for(object)
            if name.present?
              element = field.klass.new value(field),
                                        :node => name,
                                        :parents => parents
              element.build_xml(xml)
            end
          end
        end
      end

      def attributes
        {}.tap do |attributes|
          definition.attributes.each do |field|
            attributes[field.name] = object.send(field.name)
          end
        end
      end

      def definition
        Schema.definitions.detect{|definition| definition.name.to_s == node.to_s.singularize}
      end

      def value(field)
        field.value ? field.value.call(self) : object.send(field.name)
      end
    end
  end
end