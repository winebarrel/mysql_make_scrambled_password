require 'spec_helper'

describe MysqlMakeScrambledPassword do
  subject do |example|
    method_name = example.metadata.fetch(:example_group).fetch(:parent_example_group).fetch(:description)
    described_class.send(method_name, password)
  end

  describe 'make_scrambled_password' do
    context 'when password is not empty' do
      let(:password) { 'FOOBARZOO' }
      it { is_expected.to eq '*70B45D8E18771E93E011F30DB91E80D6306EA4C3' }
    end

    context 'when password is empty' do
      let(:password) { '' }
      it { is_expected.to be_empty }
    end
  end

  describe 'make_scrambled_password_323' do
    context 'when password is not empty' do
      let(:password) { 'FOOBARZOO' }
      it { is_expected.to eq '6e35068701b1cc8b' }
    end

    context 'when password is empty' do
      let(:password) { '' }
      it { is_expected.to be_empty }
    end
  end
end
