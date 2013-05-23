{ empty, join } = require \prelude-ls

angular.module 'noahfreitas' .filter 'md2html' ->
  # md2html-aux :: [String] -> [String] -> Boolean -> String
  md2html-aux = (out, [x, ...xs]:input, open) -->
    | empty input               => join '', out
    | x is \` and open is false => md2html-aux (out ++ [\<code>]), xs, true
    | x is \` and open is true  => md2html-aux (out ++ [\</code>]), xs, false
    | otherwise                 => md2html-aux (out ++ [x]), xs, open

  # md2html :: String -> String
  md2html = (input) -> md2html-aux [], input, false

