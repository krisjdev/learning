// what are the results of these expressions?

"" + 1 + 0      // 1 -- correct
"" - 1 + 0      // -1 -- correct
true + false    // 1 or true -- correct
6 / "3"         // 2 -- correct
"2" * "3"       // 6 -- correct
4 + 5 + "px"    // 9px -- correct
"$" + 4 + 5     // $45 or $9 -- answer is "$45"
"4" - 2         // 2 -- correct
"4px" - 2       // undefined/syntax error -- answer is NaN
"  -9  " + 5    // -4 -- answer is "  -9  5"
"  -9  " - 5    // -14 -- correct
null + 1        // 1 -- correct
undefined + 1   // undefined -- answer is NaN
" \t \n" - 2    // -2 -- correct