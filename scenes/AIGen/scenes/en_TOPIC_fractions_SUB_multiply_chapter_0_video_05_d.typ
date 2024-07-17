#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1-")[- $6 dot 5/6$]
#v(20pt)
#only("2-")[- $6 dot 5/6 = 6/1 dot 5/6$]
#v(20pt)
#only("3-")[- $6/1 dot 5/6 = (6 dot 5)/(1 dot 6)$]
#v(20pt)
#only("4-")[- $(6 dot 5)/(1 dot 6) = 30/6$]
#v(20pt)
#only("5-")[- The correct answer is $30/6$]
#v(20pt)
#only("1")[#voiceover("Great job! Let's go through the solution step-by-step.")]
#only("2")[#voiceover("First, we write 6 as a fraction, which is 6 over 1. So we have 6 times 5 over 6 equals 6 over 1 times 5 over 6.")]
#only("3")[#voiceover("Next, we multiply the numerators together and the denominators together. So we get 6 times 5 over 1 times 6.")]
#only("4")[#voiceover("This simplifies to 30 over 6.")]
#only("5")[#voiceover("Therefore, the correct answer is 30 over 6.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiple Choice Options]
#v(40pt)
#only("-1")[a) $5/6$]#only("2-")[#text(fill:red)[a) $5/6$]]
#v(10pt)
#only("-2")[b) $10/6$]#only("3-")[#text(fill:red)[b) $10/6$]]
#v(10pt)
#only("-3")[c) $15/6$]#only("4-")[#text(fill:red)[c) $15/6$]]
#v(10pt)
#only("-4")[d) $30/6$]#only("5-")[#text(fill:green)[d) $30/6$]]
#v(40pt)
#only("1")[#voiceover("Let's review the multiple choice options.")]
#only("2")[#voiceover("Option a, 5 over 6, is incorrect. This is just the fraction given in the question, not the result of the multiplication.")]
#only("3")[#voiceover("Option b, 10 over 6, is also incorrect. This is not the correct result of multiplying 6 by 5 over 6.")]
#only("4")[#voiceover("Option c, 15 over 6, is incorrect as well. This is not the correct result.")]
#only("5")[#voiceover("Option d, 30 over 6, is correct. As we calculated earlier, multiplying 6 by 5 over 6 gives us 30 over 6.")]
]