#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplication of Fractions]
#v(40pt)
#only("1")[
#voiceover("Let's consider the exercise.")
]
#only("2-")[#text()[$5/2$ multiplied by $3 1/4$]]
#v(20pt)
#only("3-")[#text()[$5/2$ multiplied by $13/4$]]
#v(20pt)
#only("4-")[#text()[$(5 dot 13)/(2 dot 4)$]]
#v(20pt)
#only("5-")[#text()[$65/8$]]
#v(20pt)
#only("6-")[#text()[$8 1/8$]]
#only("2")[
#voiceover("We need to multiply five halves by three and one fourth.")
]
#only("3")[
#voiceover("First, convert the mixed number three and one fourth to an improper fraction. It becomes thirteen fourths.")
]
#only("4")[
#voiceover("Next, multiply the numerators and the denominators. Five times thirteen over two times four.")
]
#only("5")[
#voiceover("This simplifies to sixty-five over eight.")
]
#only("6")[
#voiceover("Finally, convert the improper fraction back to a mixed number. Sixty-five eighths is eight and one eighth.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{5}{2}$ by $3 \frac{1}{4}$.", 
answerOptions: ("$\frac{5}{2} \\times 3 \frac{1}{4} = \frac{5}{2} \\times \frac{13}{4} = \frac{65}{8}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)