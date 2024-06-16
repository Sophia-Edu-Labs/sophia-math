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
#only("1-")[Welchem Bruch entspricht $0.07$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $7/1$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $7/100$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $7/1000$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $7/10$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche testen. Welchem Bruch entspricht null Komma null sieben?")]
#only("2")[#voiceover("Ist es sieben durch eins,")]
#only("3")[#voiceover("oder ist es sieben durch hundert,")]
#only("4")[#voiceover("oder vielleicht sieben durch tausend,")]
#only("5")[#voiceover("oder ist es sieben durch zehn?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welchem Bruch entspricht $0.07$?", 
answerOptions: ("$\\frac{7}{1}$", "$\\frac{7}{100}$", "$\\frac{7}{1000}$", "$\\frac{7}{10}$"),
correctAnswerIndex: 1 
)