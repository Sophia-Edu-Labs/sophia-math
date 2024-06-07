#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Komplexe n-te Wurzeln]
// Der Titel "Komplexe n-te Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $root(4,-16)$ in komplexer Form?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 2i]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) 4i]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt) 
#only("4-")[c) 2]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) 4]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über komplexe n-te Wurzeln testen. Was ist die vierte Wurzel von minus sechzehn in komplexer Form?")]
#only("2")[#voiceover("Ist es 2i,")]
#only("3")[#voiceover("oder ist es 4i,")]
#only("4")[#voiceover("oder vielleicht einfach 2,")]
#only("5")[#voiceover("oder ist es 4?")]
]#questionDef(
questionText: "Was ist $\sqrt[4]{-16}$ in komplexer Form?",
answerOptions: ("$2i$", "$4i$", "$2$", "$4$"),
correctAnswerIndex: 0
)