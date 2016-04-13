require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  before { allow(controller).to receive_message_chain(:controller_name).and_return('posts') }

  describe "#active_by_controller" do
    context 'when current controller' do
      it { expect(helper.active_by_controller(:posts)).to eq('active') }
    end

    context 'when other controller' do
      it { expect(helper.active_by_controller(:articles)).to eq('') }
    end
  end
end