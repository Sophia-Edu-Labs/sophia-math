#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Funktionen]
// Der Titel "Grenzwerte von Funktionen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was beschreibt der Grenzwert einer Funktion? 🤔]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Den exakten Wert der Funktion]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Das Verhalten der Funktion, wenn der Eingabewert einen bestimmten Wert annähert]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Die Ableitung der Funktion]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Das Integral der Funktion]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Grenzwerten testen. Was beschreibt der Grenzwert einer Funktion?")]
#only("2")[#voiceover("Beschreibt er den exakten Wert der Funktion,")]
#only("3")[#voiceover("oder das Verhalten der Funktion, wenn der Eingabewert einen bestimmten Wert annähert,")]
#only("4")[#voiceover("oder vielleicht die Ableitung der Funktion,")]
#only("5")[#voiceover("oder beschreibt er das Integral der Funktion?")]
]#questionDef(
questionText: "Was beschreibt der Grenzwert einer Funktion?",
answerOptions: ("Den exakten Wert der Funktion", "Das Verhalten der Funktion, wenn der Eingabewert einen bestimmten Wert annähert", "Die Ableitung der Funktion", "Das Integral der Funktion"),
correctAnswerIndex: 1,
)