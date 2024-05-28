#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Praktische Anwendungen der Hicks-Dekomposition]
// Der Titel "Praktische Anwendungen der Hicks-Dekomposition" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Die Hicks-Dekomposition ist nützlich zur Analyse von \_\_\_\_\_. 🤔]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Konsumentenverhalten 🛍️]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Unternehmensproduktion 🏭]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Marktgleichgewicht ⚖️]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Regierungspolitik 🏛️]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns Dein Wissen über die praktischen Anwendungen der Hicks-Dekomposition testen. Die Hicks-Dekomposition ist nützlich zur Analyse von...")]
#only("2")[#voiceover("Ist sie nützlich zur Analyse des Konsumentenverhaltens,")]
#only("3")[#voiceover("oder ist sie nützlich zur Analyse der Unternehmensproduktion,")]
#only("4")[#voiceover("oder vielleicht ist sie nützlich zur Analyse des Marktgleichgewichts,")]
#only("5")[#voiceover("oder ist sie nützlich zur Analyse der Regierungspolitik?")]
]#questionDef(
questionText: "Die Hicks-Dekomposition ist nützlich zur Analyse von $\underline{\hspace{1cm}}$.",
answerOptions: ("Konsumentenverhalten", "Unternehmensproduktion", "Marktgleichgewicht", "Regierungspolitik"),
correctAnswerIndex: 0,
)