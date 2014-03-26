class TestWindowsJava < MiniTest::Chef::TestCase
  def test_java_home_set_for_current_process
    assert ENV['JAVA_HOME'] == node['java']['home']
  end

  def test_java_exe_exists
    assert File.exists?(File.join(node['java']['home'], 'bin', 'java.exe'))
  end
end
