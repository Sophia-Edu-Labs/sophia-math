#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
// Der Titel "Umwandlung von Dezimalzahlen in Brüche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welchem Bruch entspricht $0.2$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $2/1$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $2/10$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $2/100$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $1/2$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Welchem Bruch entspricht null Komma zwei?")]
#only("2")[#voiceover("Ist es zwei durch eins,")]
#only("3")[#voiceover("oder ist es zwei durch zehn,")]
#only("4")[#voiceover("oder vielleicht zwei durch hundert,")]
#only("5")[#voiceover("oder ist es ein Halb?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welchem Bruch entspricht $0.2$?", 
answerOptions: ("$\frac{2}{1}$", "$\frac{2}{10}$", "$\frac{2}{100}$", "$\frac{1}{2}$"),
correctAnswerIndex: 1 
)