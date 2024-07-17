#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Rolling a 2]
#v(40pt)
#only("1-")[Consider a fair six-sided die 🎲]
#v(20pt)
#only("2-")[We roll the die 10 times]
#v(20pt)
#only("3-")[The outcomes are: 1, 2, 3, 2, 4, 2, 5, 6, 2, 3]
#v(20pt)
#only("4-")[What is the relative frequency of rolling a 2?]
#v(20pt)
#only("5-")[a) 0.2]
#v(10pt)
#only("6-")[b) 0.3]
#v(10pt)
#only("7-")[c) 0.4]
#v(10pt)
#only("8-")[d) 0.1]
#only("1")[#voiceover("Let's consider a fair six-sided die.")]
#only("2")[#voiceover("We roll the die ten times.")]
#only("3")[#voiceover("The outcomes of these rolls are: one, two, three, two, four, two, five, six, two, and three.")]
#only("4")[#voiceover("What is the relative frequency of rolling a two?")]
#only("5")[#voiceover("Is it a) zero point two,")]
#only("6")[#voiceover("b) zero point three,")]
#only("7")[#voiceover("c) zero point four,")]
#only("8")[#voiceover("or d) zero point one?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the relative frequency of rolling a $2$?", 
answerOptions: ("$0.2$", "$0.3$", "$0.4$", "$0.1$"),
correctAnswerIndex: 0 
)