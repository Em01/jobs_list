require 'rspec/expectations'
RSpec::Matchers.define :have_order do |k, v|
  match do |sequence|
    sequence.index(k) < sequence.index(v)
  end
end