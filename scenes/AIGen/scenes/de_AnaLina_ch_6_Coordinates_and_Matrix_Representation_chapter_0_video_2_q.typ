#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten in Vektorräumen]
// Der Titel "Koordinaten in Vektorräumen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was identifizieren Koordinaten eindeutig in einem Vektorraum?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Eine Linie]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Einen Punkt]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Eine Ebene]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Einen Vektor]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Koordinaten in Vektorräumen testen. Was identifizieren Koordinaten eindeutig in einem Vektorraum?")]
#only("2")[#voiceover("Ist es eine Linie,")]
#only("3")[#voiceover("oder ist es ein Punkt,")]
#only("4")[#voiceover("oder vielleicht eine Ebene,")]
#only("5")[#voiceover("oder ist es ein Vektor?")]
]#questionDef(
questionText: "Was identifizieren Koordinaten eindeutig in einem Vektorraum?",
answerOptions: ("Eine Linie", "Einen Punkt", "Eine Ebene", "Einen Vektor"),
correctAnswerIndex: 1,
)