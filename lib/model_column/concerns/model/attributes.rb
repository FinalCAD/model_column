require 'inherited_class_var'

module ModelColumn
  module Model
    module Attributes
      extend ActiveSupport::Concern
      include InheritedClassVar

      included do
        inherited_class_hash :columns
      end

      class_methods do
        # @return [Array<Symbol>] column names for the model
        def column_names
          columns.keys
        end

        protected

        # Adds column to the model
        #
        # @param [Symbol] column_name name of column to add
        def column(column_name, options={})
          columns_object.merge(column_name.to_sym => options)
        end
      end
    end
  end
end
