#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Summe 🧮]
// Der Titel "Grenzwert einer Summe" mit einem Taschenrechner-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist der Grenzwert einer Summe?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Die Summe der Grenzwerte]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Das Produkt der Grenzwerte]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Die Differenz der Grenzwerte]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Der Quotient der Grenzwerte]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Grenzwerte testen. Was ist der Grenzwert einer Summe?")]
#only("2")[#voiceover("Ist es die Summe der Grenzwerte,")]
#only("3")[#voiceover("oder ist es das Produkt der Grenzwerte,")]
#only("4")[#voiceover("oder vielleicht die Differenz der Grenzwerte,")]
#only("5")[#voiceover("oder ist es der Quotient der Grenzwerte?")]
]#questionDef(
questionText: "Was ist der Grenzwert einer Summe?",
answerOptions: ("Die Summe der Grenzwerte", "Das Produkt der Grenzwerte", "Die Differenz der Grenzwerte", "Der Quotient der Grenzwerte"),
correctAnswerIndex: 0,
)