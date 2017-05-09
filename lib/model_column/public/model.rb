require 'model_column/concerns/model/attributes'

module ModelColumn
  module Model
    extend ActiveSupport::Concern

    include Attributes
  end
end
