import managers.Stack;

@:native('DevTools')
class Main {
  static function main() {
    Stack.setup();
    ShowConsole.setup();
    GameReload.setup();
  }
}
