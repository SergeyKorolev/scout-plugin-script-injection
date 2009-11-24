class ScriptExecuter < Scout::Plugin

def build_report
  report( :my_size => rand(200) )

  rescue
     error( :subject => "Error talking to Amazon SQS", :body => "Oh no!")  
end

end
