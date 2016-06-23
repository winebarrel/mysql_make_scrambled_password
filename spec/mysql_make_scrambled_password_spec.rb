require 'spec_helper'

describe MysqlMakeScrambledPassword do
  subject do
    MysqlMakeScrambledPassword.make_scrambled_password(password)
  end

  context 'when password is not empty' do
    let(:password) { 'FOOBARZOO' }
    it { is_expected.to eq '*70B45D8E18771E93E011F30DB91E80D6306EA4C3' }
  end

  context 'when password is empty' do
    let(:password) { '' }
    it { is_expected.to be_empty }
  end
end
