#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck]
// Der Titel "Wasserdruck" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Ein Wasserhahn befindet sich 10 m unter der Wasseroberfläche in einem Reservoir. Wie hoch ist der Wasserdruck am Wasserhahn? 🚰]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 0,01 bar]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) 0,1 bar]  
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) 1 bar]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt) 
#only("5-")[d) 10 bar]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Wasserdruck testen. Ein Wasserhahn befindet sich 10 Meter unter der Wasseroberfläche in einem Reservoir. Wie hoch ist der Wasserdruck am Wasserhahn?")]
#only("2")[#voiceover("Ist es 0,01 bar,")]  
#only("3")[#voiceover("oder ist es 0,1 bar,")] 
#only("4")[#voiceover("oder vielleicht 1 bar,")]
#only("5")[#voiceover("oder ist es 10 bar?")]
]#questionDef(
questionText: "Ein Wasserhahn befindet sich $10 \, \text{m}$ unter der Wasseroberfläche in einem Reservoir. Wie hoch ist der Wasserdruck am Wasserhahn?",
answerOptions: ("$0,01 \, \text{bar}$", "$0,1 \, \text{bar}$", "$1 \, \text{bar}$", "$10 \, \text{bar}$"),
correctAnswerIndex: 2
)