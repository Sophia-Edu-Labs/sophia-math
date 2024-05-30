#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Bases]
// The title "Properties of Bases" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a property of bases?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Sour taste 😝]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Feel slippery 🧼]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) React with metals 🔧]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the properties of bases. Which of the following is a property of bases?")]
#only("2")[#voiceover("Is it a sour taste,")]
#only("3")[#voiceover("or do they feel slippery,")]
#only("4")[#voiceover("or maybe they react with metals,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "Which of the following is a property of bases?",
answerOptions: ("Sour taste", "Feel slippery", "React with metals", "None of the above"),
correctAnswerIndex: 1,
)