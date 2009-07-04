module ActiveApi
  class Definition
    attr_reader :name, :fields

    def initialize(options)
      @name   = options[:name]
      @fields = options[:fields] || []
    end

    def singular_name
      name.to_s.singularize
    end

    def plural_name
      name.to_s.pluralize
    end

    def string(name, options = {})
      field options.merge(:name => name, :type => :string, :klass => Element::Simple)
    end

    def belongs_to(name, options = {})
      field options.merge(:name => name, :type => :parent, :klass => Element::Complex)
    end

    def has_many(name, options = {})
      field options.merge(:name => name, :type => :children, :klass => Element::Collection)
    end

    def field(options)
      self.fields << Field.new(options)
    end
  end
end