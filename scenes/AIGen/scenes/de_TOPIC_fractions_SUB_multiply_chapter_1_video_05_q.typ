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
#only("1-")[Lass uns die folgende Multiplikation von Brüchen lösen:]
// Einleitungssatz wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[$frac(5,6) dot frac(6,7)$]
// Das Multiplikationsproblem wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[Welche der folgenden Antworten ist korrekt?]
// Die Frage wird ab Folie 3 angezeigt
#v(20pt)
#only("4-")[a) $frac(30,42)$]
// Antwortmöglichkeit a) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[b) $frac(36,42)$]
// Antwortmöglichkeit b) wird ab Folie 5 angezeigt
#v(10pt)
#only("6-")[c) $frac(42,42)$]
// Antwortmöglichkeit c) wird ab Folie 6 angezeigt
#v(10pt)
#only("7-")[d) $frac(30,36)$]
// Antwortmöglichkeit d) wird ab Folie 7 angezeigt
#only("1")[#voiceover("Lass uns die folgende Multiplikation von Brüchen lösen:")]
#only("2")[#voiceover("Multipliziere fünf Sechstel mit sechs Siebtel.")]
#only("3")[#voiceover("Welche der folgenden Antworten ist korrekt?")]
#only("4")[#voiceover("Ist es Antwort a: dreißig zweiundvierzigstel,")]
#only("5")[#voiceover("Antwort b: sechsunddreißig zweiundvierzigstel,")]
#only("6")[#voiceover("Antwort c: zweiundvierzig zweiundvierzigstel,")]
#only("7")[#voiceover("oder Antwort d: dreißig sechsunddreißigstel?")]
]#questionDef( 
questionText: "Multiplizieren Sie $\frac{5}{6}$ mit $\frac{6}{7}$.", 
answerOptions: ("$\frac{30}{42}$", "$\frac{36}{42}$", "$\frac{42}{42}$", "$\frac{30}{36}$"),
correctAnswerIndex: 0 
)