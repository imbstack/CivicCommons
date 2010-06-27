
# Since MockupsController subclasses (and thus loads) ApplicationController, we need to make sure that
# it gets reloaded in development. Without this, things will break after the first reload.
if ActiveSupport::Dependencies.respond_to?(:autoload_once_paths)
  load_once_paths_method = :autoload_once_paths
else
  load_once_paths_method = :load_once_paths
end

ActiveSupport::Dependencies.send(load_once_paths_method).delete(File.expand_path(File.dirname(__FILE__))+'/app/controllers')

