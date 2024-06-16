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
#only("1-")[Welchem Bruch entspricht $4.75$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $475/100$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $4.75/10$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $47.5/10$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $475/10$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Welchem Bruch entspricht vier Komma sieben fünf?")]
#only("2")[#voiceover("Ist es vierhundertfünfundsiebzig Hundertstel,")]
#only("3")[#voiceover("oder ist es vier Komma sieben fünf Zehntel,")]
#only("4")[#voiceover("oder vielleicht siebenundvierzig Komma fünf Zehntel,")]
#only("5")[#voiceover("oder ist es vierhundertfünfundsiebzig Zehntel?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welchem Bruch entspricht $4.75$?", 
answerOptions: ("$\frac{475}{100}$", "$\frac{4.75}{10}$", "$\frac{47.5}{10}$", "$\frac{475}{10}$"),
correctAnswerIndex: 0 
)