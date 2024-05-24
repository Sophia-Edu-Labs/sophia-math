#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications 🌍]
#v(40pt)
#only("1-")[Which of the following is an example of a real-world application of limits of sequences?]
#v(40pt)
#only("2-")[a) Calculating compound interest 💰]
#v(10pt)
#only("3-")[b) Population growth 👨‍👩‍👧‍👦]
#v(10pt) 
#only("4-")[c) Both a and b]
#v(10pt)
#only("5-")[d) Neither a nor b]

#only("1")[#voiceover("Let's test your understanding of real-world applications of limits of sequences. Which of the following is an example of such an application?")]
#only("2")[#voiceover("Is it calculating compound interest,")]  
#only("3")[#voiceover("or population growth,")]
#only("4")[#voiceover("or both of these,")]
#only("5")[#voiceover("or neither of these?")]
]#questionDef(
questionText: "Which of the following is an example of a real-world application of limits of sequences?",
answerOptions: ("Calculating compound interest", "Population growth", "Both a and b", "Neither a nor b"),
correctAnswerIndex: 2
)