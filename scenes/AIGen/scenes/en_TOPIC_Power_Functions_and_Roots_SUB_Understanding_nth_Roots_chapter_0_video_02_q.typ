#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[3rd Root of 8]
#v(40pt)
#only("1-")[What is the 3rd root of 8? 🤔]
#v(40pt)
#only("2-")[a) 1]
#v(10pt)
#only("3-")[b) 2]
#v(10pt)
#only("4-")[c) 3]
#v(10pt)
#only("5-")[d) 4]
#only("1")[#voiceover("Let's test your knowledge on n-th roots. What is the 3rd root of 8?")]
#only("2")[#voiceover("Is it 1,")]
#only("3")[#voiceover("or is it 2,")]
#only("4")[#voiceover("maybe it's 3,")]
#only("5")[#voiceover("or could it be 4?")]
]#questionDef(
questionText: "What is the $3$rd root of $8$?", 
answerOptions: ("$1$", "$2$", "$3$", "$4$"),
correctAnswerIndex: 1
)