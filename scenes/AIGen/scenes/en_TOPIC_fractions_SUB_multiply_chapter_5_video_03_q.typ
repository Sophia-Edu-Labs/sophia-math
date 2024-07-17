#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions in Real Life]
#v(40pt)
#only("1-")[You have $3/4$ of a chocolate bar 🍫]
#only("1")[#voiceover("Let's consider a real-life scenario involving fractions. You have three-fourths of a chocolate bar.")]
#v(20pt)
#only("2-")[You eat $1/2$ of it 🍴]
#only("2")[#voiceover("Now, you decide to eat one-half of what you have.")]
#v(20pt)
#only("3-")[How much of the whole chocolate bar did you eat?]
#only("3")[#voiceover("The question is, how much of the whole chocolate bar did you eat?")]
#v(20pt)
#only("4-")[a) $1/4$]
#only("4")[#voiceover("Is it one-fourth?")]
#v(10pt)
#only("5-")[b) $3/8$]
#only("5")[#voiceover("Or is it three-eighths?")]
#v(10pt)
#only("6-")[c) $1/2$]
#only("6")[#voiceover("Or maybe one-half?")]
#v(10pt)
#only("7-")[d) $3/4$]
#only("7")[#voiceover("Or is it three-fourths?")]
]

//Type: MC 
#questionDef( 
questionText: "You have $\frac{3}{4}$ of a chocolate bar, and you eat $\frac{1}{2}$ of it. How much of the whole chocolate bar did you eat?", 
answerOptions: ("$\frac{1}{4}$", "$\frac{3}{8}$", "$\frac{1}{2}$", "$\frac{3}{4}$"),
correctAnswerIndex: 1 
)