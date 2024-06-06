#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von n-ten Wurzeln]
// Der Titel "Vereinfachung von n-ten Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Vereinfache $\sqrt[3]{27}$.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 1]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) 2]  
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) 3]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt 
#v(10pt)
#only("5-")[d) 4]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns üben, n-te Wurzeln zu vereinfachen. Was ist der vereinfachte Wert der Kubikwurzel von 27?")]
#only("2")[#voiceover("Ist es 1,")]
#only("3")[#voiceover("oder ist es 2,")]
#only("4")[#voiceover("vielleicht ist es 3,")]
#only("5")[#voiceover("oder könnte es 4 sein?")]
]#questionDef(
questionText: "Vereinfache $\sqrt[3]{27}$.",
answerOptions: ("1", "2", "3", "4"),
correctAnswerIndex: 2
)