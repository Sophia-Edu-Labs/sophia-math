#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte]
// Der Titel "Einseitige Grenzwerte" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist ein einseitiger Grenzwert? 🤔]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Ein Grenzwert, der das Verhalten der Funktion von beiden Seiten betrachtet]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Ein Grenzwert, der das Verhalten der Funktion von einer Seite betrachtet]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Ein Grenzwert, der das Verhalten der Funktion im Unendlichen betrachtet]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Ein Grenzwert, der das Verhalten der Funktion bei Null betrachtet]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über einseitige Grenzwerte testen. Was ist ein einseitiger Grenzwert?")]
#only("2")[#voiceover("Ist es ein Grenzwert, der das Verhalten der Funktion von beiden Seiten betrachtet,")]
#only("3")[#voiceover("oder ist es ein Grenzwert, der das Verhalten der Funktion von einer Seite betrachtet,")]
#only("4")[#voiceover("oder vielleicht ein Grenzwert, der das Verhalten der Funktion im Unendlichen betrachtet,")]
#only("5")[#voiceover("oder ist es ein Grenzwert, der das Verhalten der Funktion bei Null betrachtet?")]
]#questionDef(
questionText: "Was ist ein einseitiger Grenzwert?",
answerOptions: ("Ein Grenzwert, der das Verhalten der Funktion von beiden Seiten betrachtet", "Ein Grenzwert, der das Verhalten der Funktion von einer Seite betrachtet", "Ein Grenzwert, der das Verhalten der Funktion im Unendlichen betrachtet", "Ein Grenzwert, der das Verhalten der Funktion bei Null betrachtet"),
correctAnswerIndex: 1,
)