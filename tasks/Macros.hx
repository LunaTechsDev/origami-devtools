#if macro
import sys.io.File;
import sys.FileSystem;
import haxe.macro.Context;
import haxe.macro.Compiler;
#end

class Macros {
 #if macro
 static var pluginName = Context.definedValue('plugin-name');
 static var pluginDir = '${Sys.getCwd()}/game/resources/app/Content/Datas/Scripts/Plugins/${Macros.pluginName}';

 public static function copyDetails() {
  if (pluginName != null) {
   if (FileSystem.exists(pluginDir)) {
    File.copy('${pluginDir}/details.json', '${Sys.getCwd()}/details.json');
    Sys.command('npx prettier ./details.json --write');
   }
  }
 }

 public static function setOutput() {
  var isDist = Context.definedValue('dist');
  if (isDist != null) {
   Compiler.setOutput('${Sys.getCwd()}/dist/code.js');
  } else {
   Compiler.setOutput('${Macros.pluginDir}/code.js');
  }
 }
 #end
}
