#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Zahlen größer als 1 in Brüche]
// Der Titel "Umwandlung von Zahlen größer als 1 in Brüche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welchem Bruch entspricht $2.5$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $25/10$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $2.5/1$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $5/2$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $25/100$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Zahlen größer als eins in Brüche testen. Welchem Bruch entspricht zwei Komma fünf?")]
#only("2")[#voiceover("Ist es fünfundzwanzig durch zehn,")]
#only("3")[#voiceover("oder ist es zwei Komma fünf durch eins,")]
#only("4")[#voiceover("oder vielleicht fünf durch zwei,")]
#only("5")[#voiceover("oder ist es fünfundzwanzig durch hundert?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welchem Bruch entspricht $2.5$?", 
answerOptions: ("$\frac{25}{10}$", "$\frac{2.5}{1}$", "$\frac{5}{2}$", "$\frac{25}{100}$"),
correctAnswerIndex: 2 
)