require 'model_column/concerns/attributes_base'

module ModelColumn
  module Base
    module Attributes
      extend ActiveSupport::Concern
      include AttributesBase
    end
  end
end
