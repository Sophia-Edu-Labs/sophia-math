#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Landwirtschaftliche Bewässerungspumpe 🌾🚰]
#v(40pt)
#only("1-")[Welche Art von Pumpe ist am effizientesten für die landwirtschaftliche Bewässerung?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Zentrifugal 🌀]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt) 
#only("3-")[b) Kolben 🔨]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Membran 📏]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Peristaltisch 🌈]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über landwirtschaftliche Bewässerungspumpen testen. Welche Art von Pumpe ist am effizientesten für die landwirtschaftliche Bewässerung?")]
#only("2")[#voiceover("Ist es eine Zentrifugalpumpe,")]  
#only("3")[#voiceover("oder eine Kolbenpumpe,")]
#only("4")[#voiceover("oder vielleicht eine Membranpumpe,")]
#only("5")[#voiceover("oder ist es eine peristaltische Pumpe?")]
]#questionDef(
questionText: "Welche Art von Pumpe ist am effizientesten für die landwirtschaftliche Bewässerung?",
answerOptions: ("Zentrifugal", "Kolben", "Membran", "Peristaltisch"),
correctAnswerIndex: 0,
)