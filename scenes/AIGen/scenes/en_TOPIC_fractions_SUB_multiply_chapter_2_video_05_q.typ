#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1-")[Exercise: Multiply $\dfrac{5}{6}$ by $\dfrac{6}{7}$ by $\dfrac{7}{8}$.]
#v(20pt)
#only("2-")[a) $\dfrac{35}{336}$]
#v(10pt)
#only("3-")[b) $\dfrac{42}{336}$]
#v(10pt)
#only("4-")[c) $\dfrac{35}{336}$]
#v(10pt)
#only("5-")[d) $\dfrac{210}{336}$]
#only("1")[#voiceover("Let's test your knowledge on multiplying fractions. Consider the exercise: Multiply five sixths by six sevenths by seven eighths.")]
#only("2")[#voiceover("Is the result thirty-five over three hundred thirty-six?")]
#only("3")[#voiceover("Or is it forty-two over three hundred thirty-six?")]
#only("4")[#voiceover("Or maybe thirty-five over three hundred thirty-six?")]
#only("5")[#voiceover("Or is it two hundred ten over three hundred thirty-six?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $\frac{5}{6}$ by $\frac{6}{7}$ by $\frac{7}{8}$.", 
answerOptions: ("$\frac{35}{336}$", "$\frac{42}{336}$", "$\frac{35}{336}$", "$\frac{210}{336}$"),
correctAnswerIndex: 3 
)