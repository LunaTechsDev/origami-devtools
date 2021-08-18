import pm.manager.Plugins;
import electron.renderer.Remote;

class ShowConsole {
 public static inline function setup() {
  var showConsole = Plugins.getParameter('DevTools', 'Show Console');
  if (showConsole) {
   Remote.getCurrentWindow().webContents.openDevTools({ mode: 'detach' });
  }
 }
}
