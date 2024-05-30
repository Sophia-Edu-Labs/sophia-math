#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure]
// The title "Water Pressure" is shown on this slide
#v(40pt)
#only("1-")[A boat passes over a fish, causing the water level directly above it to decrease. What happens to the pressure?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) It remains the same.]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) It decreases.]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) It increases.]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Cannot be determined.]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of water pressure. A boat passes over a fish, causing the water level directly above it to decrease. What happens to the pressure?")]
#only("2")[#voiceover("Does it remain the same,")]
#only("3")[#voiceover("or does it decrease,")]
#only("4")[#voiceover("or maybe increase,")]
#only("5")[#voiceover("or can it not be determined from the given information?")]
]#questionDef(
questionText: "A boat passes over a fish, causing the water level directly above it to decrease. What happens to the pressure?",
answerOptions: ("It remains the same.", "It decreases.", "It increases.", "Cannot be determined."),
correctAnswerIndex: 1
)