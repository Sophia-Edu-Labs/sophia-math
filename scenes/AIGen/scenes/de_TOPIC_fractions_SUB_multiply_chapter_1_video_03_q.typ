#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
// Der Titel "Brüche multiplizieren" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte die folgende Aufgabe: Multipliziere $3/4$ mit $4/5$.]
// Die Aufgabenstellung wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $7/9$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $10/12$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $12/20$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $12/15$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Multiplizieren von Brüchen testen. Betrachte die folgende Aufgabe: Multipliziere drei Viertel mit vier Fünftel.")]
#only("2")[#voiceover("Ist das Ergebnis sieben Neuntel,")]
#only("3")[#voiceover("oder ist es zehn Zwölftel,")]
#only("4")[#voiceover("oder vielleicht zwölf Zwanzigstel,")]
#only("5")[#voiceover("oder ist es zwölf Fünfzehntel?")]
]#questionDef( 
questionText: "Multiplizieren Sie $\frac{3}{4}$ mit $\frac{4}{5}$.", 
answerOptions: ("$\frac{7}{9}$", "$\frac{10}{12}$", "$\frac{12}{20}$", "$\frac{12}{15}$"),
correctAnswerIndex: 2 
)