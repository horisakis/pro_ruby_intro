require 'minitest/autorun'
require_relative '../lib/gate'
require_relative '../lib/ticket'

class GateTest < MiniTest::Test
  def test_gate
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    ticket = Ticket.new(150)
    umeda.enter(ticket)
    assert juso.exit(ticket)
  end
end
