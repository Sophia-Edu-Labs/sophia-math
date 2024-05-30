#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Water Level 🌊]
#v(40pt)
#only("1-")[A boat passes over a fish, causing the water level directly above it to decrease.]
#v(40pt)
#only("2-")[What happens to the pressure?]
#v(40pt)
#only("3-")[a) It remains the same.]
#v(10pt)
#only("4-")[b) It decreases.]
#v(10pt)  
#only("5-")[c) It increases.]
#v(10pt)
#only("6-")[d) Cannot be determined.]

#only("1")[#voiceover("Consider this scenario: A boat passes over a fish, causing the water level directly above it to decrease.")]
#only("2")[#voiceover("What do you think happens to the pressure experienced by the fish?")]
#only("3")[#voiceover("Does it remain the same,")]  
#only("4")[#voiceover("or does it decrease,")]
#only("5")[#voiceover("or maybe it increases,")]
#only("6")[#voiceover("or can it not be determined from the given information?")]
]#questionDef(
questionText: "A boat passes over a fish, causing the water level directly above it to decrease. What happens to the pressure?",
answerOptions: ("It remains the same.", "It decreases.", "It increases.", "Cannot be determined."),
correctAnswerIndex: 1
)