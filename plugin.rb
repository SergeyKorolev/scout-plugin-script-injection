class ScriptExecuter < Scout::Plugin

def build_report
  value = 0
  
  exec_command = option("exec_command")
  value_sym = option("value_name").to_sym  
  value = `#{exec_command}`.strip

  report(value_sym => value)
  
  rescue Exception => e
     error( :subject => "Oh no!", :body => "#{ e } (#{ e.class })!")  
end

end
