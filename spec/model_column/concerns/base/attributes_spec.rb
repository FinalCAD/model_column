require 'spec_helper'

describe ModelColumn::Base::Attributes do
  let!(:klass) do
    Class.new do
      include ModelColumn::Base::Attributes

      column :index
    end
  end

  describe "instance methods" do
    let(:instance) { klass.new }

    describe "have accessors" do
      it do
        expect(instance).to respond_to(:index=)
        expect(instance).to respond_to(:index)
      end
    end

    describe "set value" do
      let(:index) { -1 }

      before { instance.index= index }

      it { expect(instance.index).to eql(index) }
    end
  end

  describe "#set_initial_values" do
    let(:instance) { klass.new({ index: 999 }) }
    it { expect(instance.index).to eql(999) }
  end
end
