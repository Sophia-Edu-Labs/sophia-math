#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungen]
// Der Titel "Lineare Abbildungen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine lineare Abbildung kann durch ein \_\_\_\_\_ dargestellt werden.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Vektor]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Matrix]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Skalar]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Polynom]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über lineare Abbildungen testen. Eine lineare Abbildung kann durch was dargestellt werden?")]
#only("2")[#voiceover("Wird sie durch einen Vektor dargestellt,")]
#only("3")[#voiceover("oder wird sie durch eine Matrix dargestellt,")]
#only("4")[#voiceover("oder vielleicht durch einen Skalar,")]
#only("5")[#voiceover("oder wird sie durch ein Polynom dargestellt?")]
]#questionDef(
questionText: "Eine lineare Abbildung kann durch ein \_\_\_\_\_ dargestellt werden.",
answerOptions: ("Vektor", "Matrix", "Skalar", "Polynom"),
correctAnswerIndex: 1,
)