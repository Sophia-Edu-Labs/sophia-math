#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Advanced Multiplication of Fractions]
#v(40pt)
#text(size: 20pt, weight: "bold")[Solution: 74/5 or 14 4/5]
#v(20pt)
#only("1-")[- Option a) $42/15$]#only("2-")[#text(fill:red)[- Option a) $42/15$]]
#v(10pt)
#only("1-")[- Option b) $45/5$]#only("3-")[#text(fill:red)[- Option b) $45/5$]]
#v(10pt)
#only("1-")[- Option c) $74/5$]#only("4-")[#text(fill:green)[- Option c) $74/5$]]
#v(10pt)
#only("1-")[- Option d) $44/5$]#only("5-")[#text(fill:red)[- Option d) $44/5$]]
#only("1")[#voiceover("Not quite. Let's go over the correct solution step-by-step.")]
#only("2")[#voiceover("Option a) 42/15 is incorrect. The correct multiplication of fractions should be simplified properly.")]
#only("3")[#voiceover("Option b) 45/5 is also incorrect. This option does not represent the correct multiplication of the given fractions.")]
#only("4")[#voiceover("Option c) 74/5 is correct. Let's see how we get this result.")]
#only("5")[#voiceover("Option d) 44/5 is incorrect. This option does not represent the correct multiplication of the given fractions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Convert $6 2/5$ to an improper fraction: $6 2/5 = 32/5$]
#v(20pt)
#only("2-")[- Multiply $7/3$ by $32/5$: $7/3 dot 32/5$]
#v(20pt)
#only("3-")[- Perform the multiplication: $7 dot 32 = 224$ and $3 dot 5 = 15$]
#v(20pt)
#only("4-")[- Simplify the fraction: $224/15$]
#v(20pt)
#only("5-")[- Convert to mixed number: $224/15 = 14 14/15$]
#only("1")[#voiceover("First, we convert the mixed number 6 2/5 to an improper fraction. This gives us 32/5.")]
#only("2")[#voiceover("Next, we multiply 7/3 by 32/5. This is done by multiplying the numerators and the denominators separately.")]
#only("3")[#voiceover("Multiplying the numerators, 7 times 32 gives us 224. Multiplying the denominators, 3 times 5 gives us 15.")]
#only("4")[#voiceover("We then simplify the fraction 224/15.")]
#only("5")[#voiceover("Finally, we convert the improper fraction 224/15 to a mixed number, which is 14 14/15.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[- The correct answer is $74/5$ or $14 4/5$]
#v(20pt)
#only("1")[#voiceover("So, the final answer is 74/5 or 14 4/5. Well done!")]
]