#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeitsprüfung]
// Der Titel "Stetigkeitsprüfung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Um zu überprüfen, ob eine Funktion an einem Punkt stetig ist, müssen wir den Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, mit dem \_\_\_\_\_ der Funktion vergleichen.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Ableitung]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Integral]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Wert an diesem Punkt]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) zweite Ableitung]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der Stetigkeit testen. Um zu überprüfen, ob eine Funktion an einem Punkt stetig ist, müssen wir den Grenzwert der Funktion, wenn x sich dem Punkt nähert, mit dem Leerzeichen der Funktion vergleichen.")]
#only("2")[#voiceover("Ist es die Ableitung der Funktion,")]
#only("3")[#voiceover("oder ist es das Integral der Funktion,")]
#only("4")[#voiceover("oder vielleicht der Wert der Funktion an diesem Punkt,")]
#only("5")[#voiceover("oder ist es die zweite Ableitung der Funktion?")]
]#questionDef(
questionText: "Um zu überprüfen, ob eine Funktion an einem Punkt stetig ist, müssen wir den Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, mit dem _Wert an diesem Punkt_ der Funktion vergleichen.",
answerOptions: ("Ableitung", "Integral", "Wert an diesem Punkt", "zweite Ableitung"),
correctAnswerIndex: 2,
)