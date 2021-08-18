package tasks;

#if macro
import sys.io.File;
import sys.FileSystem;
import haxe.macro.Context;
#end

class Macros {
 #if macro
 public static function copyDetails() {
  var pluginName = Context.definedValue('plugin-name');
  var pluginDir = '${Sys.getCwd()}/game/resources/app/Content/Datas/Scripts/Plugins/${pluginName}/';
  if (pluginName != null) {
   if (FileSystem.exists(pluginDir)) {
    trace('${Sys.getCwd()}/details.json');
    File.copy('${pluginDir}details.json', '${Sys.getCwd()}/details.json');
   }
  }
 }
 #end
}
