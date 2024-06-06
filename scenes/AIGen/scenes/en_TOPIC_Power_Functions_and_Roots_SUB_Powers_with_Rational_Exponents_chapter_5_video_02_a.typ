#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $(4/9)^(1/2)$]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $2/3$]#only("2-")[#text(fill:green)[a) $2/3$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $4/9$]#only("3-")[#text(fill:red)[b) $4/9$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $1/2$]#only("4-")[#text(fill:red)[c) $1/2$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $3/2$]#only("5-")[#text(fill:red)[d) $3/2$]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! The correct answer is a) 2/3. Let's see how we can simplify this step by step.")]
#only("2")[#voiceover("The expression $(4/9)^(1/2)$ can be rewritten as the square root of 4/9, because any number raised to the power of 1/2 is the same as taking the square root of that number.")]
#only("3")[#voiceover("Now, to simplify the square root of a fraction, we can separately take the square root of the numerator and denominator. So, the square root of 4/9 is equal to the square root of 4 divided by the square root of 9.")]
#only("4")[#voiceover("The square root of 4 is 2, and the square root of 9 is 3. Therefore, $(4/9)^(1/2)$ simplifies to 2/3.")]
#only("5")[#voiceover("So, the correct answer is a) 2/3. Options b) 4/9, c) 1/2, and d) 3/2 are all incorrect simplifications of the original expression.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[$(4/9)^(1/2)$]
#v(20pt)
#only("2-")[= $root(2, 4/9)$]
#v(20pt)
#only("3-")[= $root(2,4) / root(2,9)$]
#v(20pt)
#only("4-")[= $2/3$ 🎉]

#only("1")[#voiceover("We start with the original expression, $(4/9)^(1/2)$.")]
#only("2")[#voiceover("This can be rewritten as the square root of 4/9, because any number raised to the power of 1/2 is equivalent to the square root of that number.")]
#only("3")[#voiceover("To simplify the square root of a fraction, we can take the square root of the numerator and denominator separately. So, this becomes the square root of 4 divided by the square root of 9.")]
#only("4")[#voiceover("The square root of 4 is 2, and the square root of 9 is 3. Therefore, our final simplified answer is 2/3.")]
]