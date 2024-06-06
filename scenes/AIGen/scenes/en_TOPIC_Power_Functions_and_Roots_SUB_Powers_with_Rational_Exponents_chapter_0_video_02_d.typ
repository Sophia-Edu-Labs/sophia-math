#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents]
#v(40pt)
What does $a^(1/2)$ represent?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $a$ squared]#only("2-")[#text(fill:red)[a) $a$ squared]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $a$ cubed]#only("3-")[#text(fill:red)[b) $a$ cubed]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) the square root of $a$]#only("4-")[#text(fill:green)[c) the square root of $a$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) the cube root of $a$]#only("5-")[#text(fill:red)[d) the cube root of $a$]]

#only("1")[#voiceover("Not quite, but let's take a look at the correct solution.")]
#only("2")[#voiceover("The option 'a squared' is incorrect. $a$ to the power of one half does not represent $a$ squared, which would be $a$ to the power of 2.")]
#only("3")[#voiceover("Similarly, 'a cubed' is also incorrect. $a$ cubed would be represented as $a$ to the power of 3, not one half.")]
#only("4")[#voiceover("The correct answer is 'the square root of $a$'. $a$ to the power of one half is indeed equivalent to the square root of $a$.")]
#only("5")[#voiceover("Lastly, 'the cube root of $a$' is incorrect. The cube root of $a$ would be represented as $a$ to the power of one third, not one half.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Recall the rule: $a^(m/n) = root(n, a^m)$]
#v(20pt)
#only("2-")[In this case, $a^(1/2)$, we have:]
#v(10pt)
#only("3-")[- $m = 1$]
#only("4-")[- $n = 2$]
#v(20pt)
#only("5-")[Substituting into the rule:]
#v(10pt)
#only("6-")[$a^(1/2) = root(2, a^1)$]
#v(10pt)
#only("7-")[$a^(1/2) = root(2, a)$]
#v(20pt)
#only("8-")[Therefore, $a^(1/2)$ represents the square root of $a$. 📏🎉]

#only("1")[#voiceover("Let's go through the solution step by step. First, recall the rule that $a$ to the power of $m$ over $n$ is equal to the $n$th root of $a$ to the power of $m$.")]
#only("2")[#voiceover("In the given expression, $a$ to the power of one half, we can identify the values of $m$ and $n$.")]
#only("3")[#voiceover("$m$, the numerator of the exponent, is equal to 1.")]
#only("4")[#voiceover("And $n$, the denominator of the exponent, is equal to 2.")]
#only("5")[#voiceover("Now, let's substitute these values into the rule.")]
#only("6")[#voiceover("$a$ to the power of one half is equal to the 2nd root of $a$ to the power of 1.")]
#only("7")[#voiceover("This simplifies to the 2nd root, or square root, of $a$.")]
#only("8")[#voiceover("Therefore, we can conclude that $a$ to the power of one half represents the square root of $a$. This is a fundamental rule when dealing with rational exponents.")]
]