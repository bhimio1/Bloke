
class Bloke {
    public macro function Parse(path:String) {
        haxe.macro.Context.registerModuleDependency(haxe.macro.Context.getLocalModule(), path);
        return try {
            var html = Markdown.markdownToHtml(sys.io.File.getContent(path));
            macro $v{html}
        } catch (e) {
            haxe.macro.Context.error('Could not parse: $e', haxe.macro.Context.currentPos());
        }
    }
}