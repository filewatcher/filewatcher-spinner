# frozen_string_literal: true

describe 'Filewatcher::Spinner::VERSION' do
  subject { Object.const_get(self.class.description) }

  it { is_expected.to match(/^\d+\.\d+\.\d+(\.beta\d+)?$/) }
end
