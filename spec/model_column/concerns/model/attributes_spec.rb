require 'spec_helper'

class BasicModel
  include ModelColumn::Model

  column :uuid
  column :name
end

describe ModelColumn::Model::Attributes do
  describe "class" do

    let(:klass) { BasicModel }

    describe "::column_names" do
      subject { klass.column_names }
      specify { expect(subject).to eql %i[uuid name] }
    end
  end
end
