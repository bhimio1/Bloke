class Test {
    public static function main() {
       var html = Bloke.Parse("test.md");
       js.Browser.document.body.innerHTML = html;
    }
}