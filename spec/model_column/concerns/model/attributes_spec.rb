require 'spec_helper'

describe ModelColumn::Model::Attributes do
  let!(:klass) do
    Class.new do
      include ModelColumn::Model

      column :uuid
      column :name
    end
  end

  describe "class" do
    describe "::column_names" do
      subject { klass.column_names }
      specify { expect(subject).to eql %i[uuid name] }
    end
  end
end
