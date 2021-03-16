# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.hello' do
    let(:user) { User.new }

    shared_examples 'call process1' do
      it 'should call process1' do
        expect(user).to receive(:process1).once
        user.hello(age, position)
      end
    end

    shared_examples 'call process2' do
      it 'should call process2' do
        expect(user).to receive(:process2).once
        user.hello(age, position)
      end
    end

    shared_examples 'call process3' do
      it 'should call process3' do
        expect(user).to receive(:process3).once
        user.hello(age, position)
      end
    end

    shared_examples 'call process4' do
      it 'should call process4' do
        expect(user).to receive(:process4).once
        user.hello(age, position)
      end
    end

    ########################### C0
    context 'when age=20, position=0' do
      let(:age) { 20 }
      let(:position) { 0 }

      it_behaves_like 'call process1'
      it_behaves_like 'call process3'
    end

    context 'when age=17, position=1' do
      let(:age) { 17 }
      let(:position) { 1 }

      it_behaves_like 'call process2'
      it_behaves_like 'call process4'
    end

    ########################### C1

    ########################### C2
  end
end
