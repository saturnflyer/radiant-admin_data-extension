# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class AdminDataExtension < Radiant::Extension
  version "1.0"
  description "Allows you to view and alter your database tables"
  url "http://www.saturnflyer.com/"
  
  define_routes do |map|
    AdminData::Routing.connect_with map
  end
  
  def activate
    if Radiant::Config['admin_data.show_tab?']
      admin.tabs.add "DB", "/admin_data", :after => "Layouts", :visibility => [:admin]
    end
  end
  
  def deactivate
  end
  
end
