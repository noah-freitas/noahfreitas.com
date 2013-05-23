describe 'md2html' (x) ->
  var md2html

  beforeEach module 'noahfreitas'
  beforeEach inject ($filter) -> md2html := $filter 'md2html'

  it 'should replace ` with <code> tags' ->
    expect (md2html 'This is a test of `md2html`') .toBe 'This is a test of <code>md2html</code>'
    expect (md2html '`code`') .toBe '<code>code</code>'
    expect (md2html '`var a = 1;`\n`var b = 2;`\n`var c = a + b;`') .toBe '<code>var a = 1;</code>\n<code>var b = 2;</code>\n<code>var c = a + b;</code>'

