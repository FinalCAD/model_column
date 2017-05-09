require 'model_column/concerns/model/attributes'

module ModelColumn
  module AttributesBase
    extend ActiveSupport::Concern
    include Model::Attributes

    class_methods do
      protected

      # See {Model#column}
      def column(column_name, options={})
        super
        define_attribute_method(column_name)
      end

      # Define default attribute method for a column
      # @param column_name [Symbol] the column_name accessors
      def define_attribute_method(column_name, &block)
        return if method_defined? column_name

        define_method(:"#{column_name}=") do |value|
          instance_variable_set(:"@#{column_name}", value)
        end

        define_method(:"#{column_name}") do
          instance_variable_get(:"@#{column_name}")
        end
      end
    end
  end
end
