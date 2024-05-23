#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequences]
// The title "Sequences" is shown on this slide
#v(40pt)
#only("1-")[What is a sequence? 🤔]
// The question "What is a sequence?" is shown from slide 1 onward
#v(40pt)
#only("2-")[a) A random list of numbers 🎲]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) An ordered list of numbers 📜]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) A set of unrelated numbers 🧩]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) A single number 1️⃣]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on sequences. What exactly is a sequence?")]
#only("2")[#voiceover("Is it a random list of numbers,")]
#only("3")[#voiceover("or is it an ordered list of numbers,")]
#only("4")[#voiceover("maybe a set of unrelated numbers,")]
#only("5")[#voiceover("or is it just a single number?")]
]#questionDef(
questionText: "What is a sequence?", 
answerOptions: ("A random list of numbers", "An ordered list of numbers", "A set of unrelated numbers", "A single number"),
correctAnswerIndex: 1,
)