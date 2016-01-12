# linux java minitest
class TestLinixJava < MiniTest::Chef::TestCase
  include MiniTest::Chef::Assertions

  def test_java_home_set_for_current_process
    assert package('openjdk-7-jdk').must_be_installed
  end
end
