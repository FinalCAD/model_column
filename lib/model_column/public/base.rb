require 'model_column/concerns/base/attributes'

module ModelColumn

  # Include this to with {Model}
  module Base
    extend ActiveSupport::Concern

    include ModelColumn::Model

    include Attributes
  end
end
