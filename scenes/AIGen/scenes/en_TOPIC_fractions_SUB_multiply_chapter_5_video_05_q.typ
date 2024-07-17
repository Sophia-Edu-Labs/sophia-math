#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications of Multiplying Fractions]
#v(40pt)
#only("1-")[You have $2/3$ of a pie, and you give $3/4$ of it to your neighbor. How much of the whole pie did your neighbor get?]
#v(40pt)
#only("2-")[a) $1/2$]
#v(10pt)
#only("3-")[b) $1/4$]
#v(10pt)
#only("4-")[c) $1/3$]
#v(10pt)
#only("5-")[d) $1/6$]
#only("1")[#voiceover("Let's explore a real-world application of multiplying fractions. Imagine you have two-thirds of a pie, and you give three-fourths of it to your neighbor. How much of the whole pie did your neighbor get?")]
#only("2")[#voiceover("Is it one-half of the pie?")]
#only("3")[#voiceover("Or is it one-fourth of the pie?")]
#only("4")[#voiceover("Could it be one-third of the pie?")]
#only("5")[#voiceover("Or is it one-sixth of the pie?")]
]

//Type: MC 
#questionDef( 
questionText: "You have $\frac{2}{3}$ of a pie, and you give $\frac{3}{4}$ of it to your neighbor. How much of the whole pie did your neighbor get?", 
answerOptions: ("$\frac{1}{2}$", "$\frac{1}{4}$", "$\frac{1}{3}$", "$\frac{1}{6}$"),
correctAnswerIndex: 0 
)