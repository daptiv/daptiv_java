# windows java test class
class TestWindowsJava < MiniTest::Chef::TestCase
  def test_java_home_set_for_current_process
    assert ENV['JAVA_HOME'] == node['java']['java_home']
  end

  def test_java_exe_exists
    assert File.exist?(File.join(node['java']['java_home'], 'bin', 'java.exe'))
  end
end
