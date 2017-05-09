require 'model_column/concerns/attributes_base'

module ModelColumn
  module Base
    module Attributes
      extend ActiveSupport::Concern
      include AttributesBase

      def initialize(initial_values={})
        @initial_values = initial_values
        set_initial_values
      end

      private

      attr_reader :initial_values

      def set_initial_values
        initial_values.each do |method_name, value|
          self.public_send(:"#{method_name}=", value)
        end
      end
    end
  end
end
