#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Famous Stock Exchanges 📈]
// The title "Famous Stock Exchanges" is shown on this slide
#v(40pt)
#only("1-")[Which are famous stock exchanges? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) NYSE and NASDAQ 🏛️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) FBI and CIA 🕵️]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) NASA and ESA 🚀]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) FIFA and UEFA ⚽]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on famous stock exchanges. Which of the following are well-known stock exchanges?")]
#only("2")[#voiceover("Are they the New York Stock Exchange, known as NYSE, and NASDAQ,")]
#only("3")[#voiceover("or are they the Federal Bureau of Investigation, FBI, and the Central Intelligence Agency, CIA,")]
#only("4")[#voiceover("or maybe the National Aeronautics and Space Administration, NASA, and the European Space Agency, ESA,")]
#only("5")[#voiceover("or are they the International Federation of Association Football, FIFA, and the Union of European Football Associations, UEFA?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which are famous stock exchanges?",
answerOptions: ("NYSE and NASDAQ", "FBI and CIA", "NASA and ESA", "FIFA and UEFA"),
correctAnswerIndex: 0,
)