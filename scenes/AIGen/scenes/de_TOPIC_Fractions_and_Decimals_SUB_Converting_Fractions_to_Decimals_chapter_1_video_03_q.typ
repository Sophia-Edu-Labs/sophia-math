#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $75/100$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.075$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $7.5$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.75$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $75.0$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist fünfundsiebzig Hundertstel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma null sieben fünf,")]
#only("3")[#voiceover("oder ist es sieben Komma fünf,")]
#only("4")[#voiceover("oder vielleicht null Komma sieben fünf,")]
#only("5")[#voiceover("oder ist es fünfundsiebzig Komma null?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{75}{100}$ als Dezimalzahl?", 
answerOptions: ("$0.075$", "$7.5$", "$0.75$", "$75.0$"),
correctAnswerIndex: 2 
)