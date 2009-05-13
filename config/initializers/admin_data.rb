# authorization check to access the controller
ADMIN_DATA_AUTH = Proc.new { |controller| controller.send("admin_logged_in?") }
# If you want updates to be allowed then set this constant as true
ADMIN_DATA_UPDATE_ALLOWED    = true