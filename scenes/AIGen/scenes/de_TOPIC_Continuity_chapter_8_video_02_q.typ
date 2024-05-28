#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte]
// Der Titel "Einseitige Grenzwerte" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was überprüfen einseitige Grenzwerte? 🤔]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Das Verhalten der Funktion von beiden Seiten]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Das Verhalten der Funktion von einer Seite]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Das Verhalten der Funktion im Unendlichen ∞]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Das Verhalten der Funktion bei Null 0️⃣]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von einseitigen Grenzwerten testen. Was überprüfen einseitige Grenzwerte?")]
#only("2")[#voiceover("Überprüfen sie das Verhalten der Funktion von beiden Seiten,")]
#only("3")[#voiceover("oder überprüfen sie das Verhalten der Funktion nur von einer Seite,")]
#only("4")[#voiceover("oder überprüfen sie vielleicht das Verhalten der Funktion im Unendlichen,")]
#only("5")[#voiceover("oder überprüfen sie das Verhalten der Funktion bei Null?")]
]#questionDef(
questionText: "Was überprüfen einseitige Grenzwerte?",
answerOptions: ("Das Verhalten der Funktion von beiden Seiten", "Das Verhalten der Funktion von einer Seite", "Das Verhalten der Funktion im Unendlichen", "Das Verhalten der Funktion bei Null"),
correctAnswerIndex: 1,
)