require 'ruble'

command t(:developer_center) do |cmd|
  #cmd.key_binding = 'M4+H'
  cmd.output = :show_as_html
  cmd.input = :selection, :word 
  #cmd.input = [:selection, :word]
  cmd.scope = "meta.project.com.appcelerator.titanium.desktop source.js"
  cmd.invoke do |context|
    word = $stdin.read  
    if word.nil? || word == ""
      url = "<meta http-equiv='Refresh' content='0;URL=http://studio.appcelerator.com/redirect.php?location=docs_desktop_search'>"    
    else
      url = "<meta http-equiv='Refresh' content='0;URL=http://studio.appcelerator.com/redirect.php?location=docs_desktop_search&q=#{word}'>"
    end
  end
end
