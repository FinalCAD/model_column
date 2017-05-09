require 'spec_helper'

class AttributeModelBase
  include ModelColumn::Base::Attributes

  column :index
end

describe ModelColumn::Base::Attributes do
  describe "class" do

    let(:klass) { AttributeModelBase.new }

    describe "have accessors" do
      it do
        expect(klass).to respond_to(:index=)
        expect(klass).to respond_to(:index)
      end
    end

    describe "set value" do
      let(:index) { -1 }

      before { klass.index= index }

      it do
        expect(klass.index).to eql(index)
      end
    end
  end
end
