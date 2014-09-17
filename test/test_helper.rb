gem 'minitest'
require 'minitest/autorun'
require 'minitest/mock'

# silence warnings
old_w, $-w = $-w, false

require 'activevalidators'

# unsilence warnings
$-w = old_w

class TestRecord
  include ActiveModel::Validations
  attr_accessor :url

  def initialize(attrs = {})
    attrs.each_pair { |k,v| send("#{k}=", v) }
  end
end
