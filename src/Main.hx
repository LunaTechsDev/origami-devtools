

import managers.Stack;
import GameReload;

@:native("DevTools")
class Main {
	static function main() {
		Stack.setup();
		GameReload.setup();
	}
}
