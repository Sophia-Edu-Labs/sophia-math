#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Equations with Rational Exponents]
#v(40pt)
Solve $x^(1/2) = 4$
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) 4]#only("3-")[#text(fill:red)[b) 4]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) 16]#only("5-")[#text(fill:green)[d) 16]]

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2-5")[#voiceover("Let's go through the solution step by step to understand why d) 16 is correct.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Isolate the Term]
#v(40pt)
#only("1-")[- We have: $x^(1/2) = 4$]
#v(20pt)
#only("2-")[- The term with the exponent is already isolated on the left side.]
#v(20pt)
#only("3-")[➡️ No need for further manipulation.]

#only("1")[#voiceover("We start with the equation x to the power of one half equals four.")]
#only("2")[#voiceover("We see that the term with the exponent, x to the power of one half, is already isolated on the left side of the equation.")]
#only("3")[#voiceover("So we don't need to do any further manipulation in this step.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Raise Both Sides to the Reciprocal]
#v(40pt)
#only("1-")[- The exponent is $1/2$, so the reciprocal is $2/1 = 2$.]
#v(20pt)
#only("2-")[- Raise both sides to the power of 2:]
#v(20pt)
#only("3-")[$(x^(1/2))^2 = 4^2$]

#only("1")[#voiceover("Next, we look at the exponent. It's one half, so the reciprocal is two over one, which simplifies to just two.")]
#only("2")[#voiceover("We now raise both sides of the equation to the power of two.")]
#only("3")[#voiceover("On the left side, we have x to the power of one half, all raised to the power of two. On the right side, we have four squared.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("1-")[- Using the power rule, $(x^(1/2))^2 = x^((1/2) dot 2) = x^1 = x$]
#v(20pt)
#only("2-")[- On the right side, $4^2 = 16$]
#v(20pt)
#only("3-")[➡️ $x = 16$]

#only("1")[#voiceover("Now we simplify. On the left side, we use the power rule. x to the power of one half, all squared, becomes x to the power of one half times two, which is just x to the power of one, or simply x.")]
#only("2")[#voiceover("On the right side, four squared is sixteen.")]
#only("3")[#voiceover("So we end up with x equals sixteen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[🎉 The solution to $x^(1/2) = 4$ is $x = 16$.]
#v(20pt)
#only("2-")[The correct answer is d) 16.]

#only("1")[#voiceover("In conclusion, the solution to the equation x to the power of one half equals four is x equals sixteen.")]
#only("2")[#voiceover("Therefore, the correct answer is d) 16. Well done!")]
]