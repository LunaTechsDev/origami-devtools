package managers;

import pm.core.Game;
import pm.manager.GameStack;
import pm.manager.Plugins;
import pm.scene.Map_;
import pm.datas.Systems;

@native("StackOveride")
class Stack {
 public static inline function setup() {
  var quickStart = Plugins.getParameter('DevTools', 'Quick Start');
  if (quickStart) {
   Plugins.inject(GameStack, 'pushTitleScreen', () -> {
    Game.current = new Game();
    Game.current.initializeDefault();
    GameStack.replace(new Map_(Systems.ID_MAP_START_HERO));
    GameStack.requestPaintHUD = true;
   }, true);
  }
 }
}
