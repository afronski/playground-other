require 'ex48/parser.rb'
require 'test/unit'

class TestParser < Test::Unit::TestCase
  def test_basic_sentence()
    result = parse_sentence([
      ['verb', 'run'], ['direction', 'north']
    ])

    assert_equal('player', result.subject)
    assert_equal('run', result.verb)
    assert_equal('north', result.object)
  end

  def test_complex_sentence()
    result = parse_sentence([
      ['noun', 'bear'], ['verb', 'eat'],
      ['stop', 'the'], ['noun', 'honey']
    ])

    assert_equal('bear', result.subject)
    assert_equal('eat', result.verb)
    assert_equal('honey', result.object)
  end
end
