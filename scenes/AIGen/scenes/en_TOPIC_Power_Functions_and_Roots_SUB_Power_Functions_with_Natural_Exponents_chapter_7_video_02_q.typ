#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Applications of Power Functions 🏗️]
#v(40pt)
#only("1-")[Which of the following is an application of power functions?]
#v(40pt)
#only("2-")[a) Calculating the area of a square 📐]
#v(10pt)
#only("3-")[b) Modeling population growth 📈]
#v(10pt)
#only("4-")[c) Determining the speed of a car 🏎️]
#v(10pt) 
#only("5-")[d) All of the above 🌐]

#only("1")[#voiceover("Let's test your understanding of power functions and their applications. Which of the following is an application of power functions?")]
#only("2")[#voiceover("Is it calculating the area of a square,")]  
#only("3")[#voiceover("or modeling population growth,")]
#only("4")[#voiceover("or determining the speed of a car,")]
#only("5")[#voiceover("or are all of these applications of power functions?")]
]#questionDef(
questionText: "Which of the following is an application of power functions?",
answerOptions: ("Calculating the area of a square", "Modeling population growth", "Determining the speed of a car", "All of the above"),
correctAnswerIndex: 3
)