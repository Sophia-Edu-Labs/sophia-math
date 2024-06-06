#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[3rd Root of 8]
#v(40pt)
What is the 3rd root of 8?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) 2]#only("3-")[#text(fill:green)[b) 2]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) 3]#only("4-")[#text(fill:red)[c) 3]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) 4]#only("5-")[#text(fill:red)[d) 4]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) 1 is incorrect. The 3rd root of 8 is not 1, because 1 cubed is 1, not 8.")]
#only("3")[#voiceover("Option b) 2 is correct. The 3rd root of 8 is indeed 2, because 2 cubed, or 2 times 2 times 2, equals 8.")]
#only("4")[#voiceover("Option c) 3 is incorrect. The 3rd root of 8 is not 3, because 3 cubed is 27, not 8.")]
#only("5")[#voiceover("Option d) 4 is also incorrect. The 3rd root of 8 is not 4, because 4 cubed is 64, not 8.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Finding the 3rd root of 8 means finding a number that, when cubed (raised to the power of 3), equals 8.]
#v(20pt)
#only("2-")[Let's call this number $x$. Then we have: $x^3 = 8$]
#v(20pt)
#only("3-")[To solve for $x$, we take the cube root of both sides: $root(3, x^3) = root(3, 8)$]
#v(20pt)
#only("4-")[The cube root and the power of 3 cancel out on the left side: $x = root(3, 8)$]
#only("1")[#voiceover("To find the 3rd root of 8, we need to find a number that, when cubed or raised to the power of 3, equals 8.")]
#only("2")[#voiceover("Let's call this unknown number x. Then we can write an equation: x cubed equals 8.")]
#only("3")[#voiceover("To solve for x, we take the cube root of both sides of the equation. The cube root of x cubed equals the cube root of 8.")]
#only("4")[#voiceover("On the left side, the cube root and the power of 3 cancel each other out, leaving just x. So x equals the cube root of 8.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[Now, what number, when cubed, gives 8? 🤔]
#v(20pt)
#only("2-")[Let's try 2: $2^3 = 2 * 2 * 2 = 8$ ✅]
#v(20pt)
#only("3-")[Therefore, $x = 2$, and the 3rd root of 8 is 2.]
#only("1")[#voiceover("Now the question is, what number, when cubed, gives 8?")]
#only("2")[#voiceover("Let's try 2. 2 cubed is 2 times 2 times 2, which equals 8. That works!")]
#only("3")[#voiceover("Therefore, x equals 2, and the 3rd root of 8 is 2.")]
]