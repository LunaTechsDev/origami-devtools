import electron.remote.GlobalShortcut;
import pm.manager.Plugins;
import electron.renderer.Remote;
import js.Browser;

class GameReload {
 public static function setup() {
  var reloadShortcut = Plugins.getParameter('DevTools', 'Reload Shortcut');
  if (reloadShortcut != '') {
   GameReload.register();
   Browser.window.addEventListener('focus', GameReload.register);
   Browser.window.addEventListener('blur', GameReload.unregister);
   Browser.window.addEventListener('beforeunload', GameReload.unregister);
  }
 }

 static function register() {
  GlobalShortcut.register('F5', GameReload.reload);
 }

 static function unregister() {
  GlobalShortcut.unregister('F5');
 }

 static function reload() {
  Remote.getCurrentWindow().reload();
 }
}
