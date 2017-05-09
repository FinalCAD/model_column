require 'spec_helper'

require 'model_column/concerns/attributes_base'

class BasicModelBase
  include ModelColumn::AttributesBase

  column :id
end

describe ModelColumn::AttributesBase do
  describe "class" do

    let(:klass) { BasicModelBase.new }

    describe "have accessors" do
      it do
        expect(klass).to respond_to(:id=)
        expect(klass).to respond_to(:id)
      end
    end

    describe "set value" do
      let(:id) { 42 }

      before { klass.id= id }

      it do
        expect(klass.id).to eql(id)
      end
    end
  end
end
