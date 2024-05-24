#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quotients of Limits]
#v(40pt)
If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$ (M != 0), then $lim_(n -> infinity) (a_n / b_n)$ is \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) L + M]#only("2-")[#text(fill:red)[a) L + M]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) L - M]#only("3-")[#text(fill:red)[b) L - M]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) L M]#only("4-")[#text(fill:red)[c) L M]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) L / M]#only("5-")[#text(fill:green)[d) L / M]]
#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) L + M is incorrect. When taking the limit of a quotient, we don't add the individual limits.")]
#only("3")[#voiceover("Option b) L - M is also incorrect. We don't subtract the individual limits either.")]
#only("4")[#voiceover("Option c) L M is incorrect as well. We don't multiply the individual limits when dealing with a quotient.")]
#only("5")[#voiceover("The correct answer is d) L / M. When taking the limit of a quotient, we divide the limits of the numerator and denominator, provided the limit of the denominator is not zero.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1️⃣ Given: $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$ (M != 0)]
#v(20pt)
#only("2-")[2️⃣ We want to find: $lim_(n -> infinity) (a_n / b_n)$]
#v(20pt)
#only("3-")[3️⃣ Recall the rule: If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$ (M != 0), then $lim_(n -> infinity) (a_n / b_n) = L / M$]
#v(20pt)
#only("4-")[4️⃣ Apply the rule: $lim_(n -> infinity) (a_n / b_n) = L / M$]
#v(20pt)
#only("5-")[5️⃣ Therefore, the correct answer is d) L / M 🎉]

#only("1")[#voiceover("Let's go through the solution step by step. First, we're given that the limit of the sequence a sub n as n approaches infinity is L, and the limit of the sequence b sub n as n approaches infinity is M, where M is not zero.")]

#only("2")[#voiceover("We're asked to find the limit of the quotient of a sub n over b sub n as n approaches infinity.")]

#only("3")[#voiceover("To solve this, we recall the rule for limits of quotients. If the limit of a sub n is L and the limit of b sub n is M, where M is not zero, then the limit of the quotient a sub n over b sub n is equal to L over M.")]

#only("4")[#voiceover("Applying this rule to our problem, we get that the limit of a sub n over b sub n as n approaches infinity is equal to L over M.")]

#only("5")[#voiceover("Therefore, the correct answer is option d) L over M. Great work on solving this problem!")]
]