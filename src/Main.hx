import managers.Stack;
import GameReload;
import ShowConsole;

@:native("DevTools")
class Main {
 static function main() {
  Stack.setup();
  ShowConsole.setup();
  GameReload.setup();
 }
}
