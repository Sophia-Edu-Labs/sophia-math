#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications 🌍]
#v(40pt)
#only("1-")[Which of the following is an example of a real-world application of rational exponents?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Calculating compound interest 💰]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Finding the area of a circle ⚪]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Solving linear equations 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Determining the slope of a line 📐]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on real-world applications of rational exponents. Which of the following is an example of a real-world application of rational exponents?")]
#only("2")[#voiceover("Is it calculating compound interest,")]
#only("3")[#voiceover("or finding the area of a circle,")]
#only("4")[#voiceover("or maybe solving linear equations,")]
#only("5")[#voiceover("or is it determining the slope of a line?")]
]#questionDef(
questionText: "Which of the following is an example of a real-world application of rational exponents?",
answerOptions: ("Calculating compound interest", "Finding the area of a circle", "Solving linear equations", "Determining the slope of a line"),
correctAnswerIndex: 0,
)