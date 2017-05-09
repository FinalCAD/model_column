require 'spec_helper'

require 'model_column/concerns/attributes_base'

describe ModelColumn::AttributesBase do
  let!(:klass) do
    Class.new do
      include ModelColumn::AttributesBase

      column :id
    end
  end

  describe "instance accessors" do
    let(:instance) { klass.new }

    describe "have accessors" do
      it do
        expect(instance).to respond_to(:id=)
        expect(instance).to respond_to(:id)
      end
    end

    describe "set value" do
      let(:id) { 42 }

      before { instance.id= id }

      it do
        expect(instance.id).to eql(id)
      end
    end
  end
end
