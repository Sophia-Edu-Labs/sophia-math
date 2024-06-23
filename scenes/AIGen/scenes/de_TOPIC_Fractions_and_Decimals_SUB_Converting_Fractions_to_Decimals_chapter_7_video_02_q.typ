#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von komplexen Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von komplexen Brüchen in Dezimalzahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $11/20$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.55$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.5$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.525$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $0.50$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von komplexen Brüchen in Dezimalzahlen testen. Was ist elf zwanzigstel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma fünf fünf,")]
#only("3")[#voiceover("oder ist es null Komma fünf,")]
#only("4")[#voiceover("oder vielleicht null Komma fünf zwei fünf,")]
#only("5")[#voiceover("oder ist es null Komma fünf null?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{11}{20}$ als Dezimalzahl?", 
answerOptions: ("$0.55$", "$0.5$", "$0.525$", "$0.50$"),
correctAnswerIndex: 0
)