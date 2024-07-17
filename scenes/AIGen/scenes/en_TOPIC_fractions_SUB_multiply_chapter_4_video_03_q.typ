#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1-")[Let's solve the following exercise:]
#v(20pt)
#only("2-")[
#text(size: 24pt)[Multiply $2/3$ by $4/7$]
]
#v(20pt)
#only("3-")[a) $8/21$]
#v(10pt)
#only("4-")[b) $7/12$]
#v(10pt)
#only("5-")[c) $12/21$]
#v(10pt)
#only("6-")[d) $8/14$]
#only("1")[#voiceover("Let's solve the following exercise:")]
#only("2")[#voiceover("Multiply two thirds by four sevenths.")]
#only("3")[#voiceover("Is the answer eight twenty-firsts,")]
#only("4")[#voiceover("or is it seven twelfths,")]
#only("5")[#voiceover("or maybe twelve twenty-firsts,")]
#only("6")[#voiceover("or is it eight fourteenths?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $\frac{2}{3}$ by $\frac{4}{7}$.", 
answerOptions: ("$\frac{8}{21}$", "$\frac{7}{12}$", "$\frac{12}{21}$", "$\frac{8}{14}$"),
correctAnswerIndex: 0 
)