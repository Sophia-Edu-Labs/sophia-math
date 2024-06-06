#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify Expressions]
#v(40pt)
#only("1-")[Simplify $3 2^(1/2) + 2 2^(1/2)$.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $5 2^(1/2)$]#only("2-")[#text(fill:green)[a) $5 2^(1/2)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $6 2^(1/2)$]#only("3-")[#text(fill:red)[b) $6 2^(1/2)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $4 2^(1/2)$]#only("4-")[#text(fill:red)[c) $4 2^(1/2)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $5$]#only("5-")[#text(fill:red)[d) $5$]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! The correct answer is...")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) $5 2^(1/2)$. To add expressions with rational exponents, the bases and exponents must be the same. Here, both terms have a base of 2 and an exponent of 1/2, so we can simply add the coefficients.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) $6 2^(1/2)$ is incorrect. This would be the result if we added the coefficients and the bases, which is not the correct procedure.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) $4 2^(1/2)$ is also incorrect. This would be the result if we only added the bases, ignoring the coefficients.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) $5$ is incorrect as well. This is just the sum of the coefficients, but the base and exponent are missing.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given expression: $3 2^(1/2) + 2 2^(1/2)$]
#v(20pt)
#only("2-")[Step 1: Check base and exponent 🔍]
#v(10pt)
#only("3-")[- Both terms have base 2 and exponent 1/2 ✅]
#v(20pt)
#only("4-")[Step 2: Add coefficients 🧮]
#v(10pt)
#only("5-")[- $3 + 2 = 5$]
#v(20pt)
#only("6-")[Step 3: Keep base and exponent 📜]
#v(10pt)
#only("7-")[- Base: 2, Exponent: 1/2]
#v(20pt)
#only("8-")[Final answer: $5 2^(1/2)$ 🎉]

#only("1")[#voiceover("Let's go through the solution step by step.")]
#only("2")[#voiceover("First, we check the base and exponent of each term.")]
#only("3")[#voiceover("We see that both terms have a base of 2 and an exponent of 1/2, so we can proceed with adding them.")]
#only("4")[#voiceover("Next, we add the coefficients.")]
#only("5")[#voiceover("3 plus 2 equals 5.")]
#only("6")[#voiceover("We keep the base and exponent the same.")]
#only("7")[#voiceover("The base remains 2, and the exponent remains 1/2.")]
#only("8")[#voiceover("So our final answer is 5 times 2 to the power of 1/2.")]
]