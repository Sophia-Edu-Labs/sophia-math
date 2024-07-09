#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sequences]
#v(40pt)
#only("1-")[Given:]
#v(20pt)
#only("1-")[- $lim_(n -> infinity) a_n = 1$]
#v(10pt)
#only("2-")[- $lim_(n -> infinity) b_n = 2$]
#v(40pt)
#only("3-")[What is $lim_(n -> infinity) (a_n + b_n) a_n$?]
#v(40pt)
#only("4-")[a) 1]
#v(10pt)
#only("5-")[b) 2]
#v(10pt)  
#only("6-")[c) 3]
#v(10pt)
#only("7-")[d) 4]

#only("1")[#voiceover("Let's practice combining limits of sequences. We are given that the limit of the sequence a sub n as n approaches infinity is 1,")]
#only("2")[#voiceover("and the limit of the sequence b sub n as n approaches infinity is 2.")]
#only("3")[#voiceover("Based on this information, what is the limit of the sequence a sub n plus b sub n, all multiplied by a sub n, as n approaches infinity?")]
#only("4")[#voiceover("Is it 1,")]  
#only("5")[#voiceover("or is it 2,")]
#only("6")[#voiceover("or perhaps 3,")]
#only("7")[#voiceover("or could it be 4?")]
]#questionDef(
questionText: "Given $\lim_{n \\to \infty} a_n = 1$ and $\lim_{n \\to \infty} b_n = 2$, what is $\lim_{n \\to \infty} (a_n + b_n) a_n$?",
answerOptions: ("$1$", "$2$", "$3$", "$4$"),
correctAnswerIndex: 2
)