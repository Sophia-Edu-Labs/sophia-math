#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
Simplify $(2^(1/2))^2$.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) 2]#only("2-")[#text(fill:green)[a) 2]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) 4]#only("3-")[#text(fill:red)[b) 4]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) 16]#only("5-")[#text(fill:red)[d) 16]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Choice a), 2, is indeed the correct simplification of the expression $(2^(1/2))^2$.")]
#only("3")[#voiceover("Choice b), 4, is incorrect. It would be the result if we simplified the expression as $(2^1)^2$ instead of $(2^(1/2))^2$.")]
#only("4")[#voiceover("Choice c), 8, is also incorrect. It would be the result if we simplified the expression as $2^((1/2)2)$ instead of $(2^(1/2))^2$.")]
#only("5")[#voiceover("And choice d), 16, is incorrect as well. It would be the result if we simplified the expression as $2^(1/2)2$ instead of $(2^(1/2))^2$.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[We want to simplify $(2^(1/2))^2$.]
#v(20pt)
#only("2-")[1. Recall the power rule for exponents: $(a^m)^n = a^(m n)$]
#v(20pt)
#only("3-")[2. Apply the rule: $(2^(1/2))^2 = 2^((1/2)2) = 2^1$]
#v(20pt)
#only("4-")[3. Simplify: $2^1 = 2$]
#v(20pt)
#only("5-")[Therefore, $(2^(1/2))^2 = 2$. 🎉]

#only("1")[#voiceover("Let's go through the step-by-step solution to see why a) 2 is the correct answer.")]
#only("2")[#voiceover("First, recall the power rule for exponents: a to the power of m, all raised to the power of n, equals a to the power of m times n.")]
#only("3")[#voiceover("Applying this rule to our expression, we get: 2 to the power of one-half, all squared, equals 2 to the power of one-half times 2, which simplifies to 2 to the power of 1.")]
#only("4")[#voiceover("Now, 2 to the power of 1 is simply 2.")]
#only("5")[#voiceover("Therefore, the correct simplification of the expression 2 to the power of one-half, all squared, is indeed 2.")]
]