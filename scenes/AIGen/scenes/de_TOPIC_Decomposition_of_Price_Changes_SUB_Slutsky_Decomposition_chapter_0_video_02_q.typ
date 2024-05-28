#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Dekomposition]
// Der Titel "Slutsky-Dekomposition" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[In welche Effekte zerlegt die Slutsky-Dekomposition die Wirkung einer Preisänderung? 🤔]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Substitutions- und Einkommenseffekte]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Angebots- und Nachfrageeffekte]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Elastizitäts- und Inelastizitätseffekte]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Grenz- und Durchschnittseffekte]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Slutsky-Dekomposition testen. In welche Effekte zerlegt die Slutsky-Dekomposition die Wirkung einer Preisänderung?")]
#only("2")[#voiceover("Zerlegt sie die Wirkung in Substitutions- und Einkommenseffekte,")]
#only("3")[#voiceover("oder in Angebots- und Nachfrageeffekte,")]
#only("4")[#voiceover("oder vielleicht in Elastizitäts- und Inelastizitätseffekte,")]
#only("5")[#voiceover("oder in Grenz- und Durchschnittseffekte?")]
]#questionDef(
questionText: "In welche Effekte zerlegt die Slutsky-Dekomposition die Wirkung einer Preisänderung?",
answerOptions: ("$Substitutions$- und $Einkommenseffekte$", "$Angebots$- und $Nachfrageeffekte$", "$Elastizitäts$- und $Inelastizitätseffekte$", "$Grenz$- und $Durchschnittseffekte$"),
correctAnswerIndex: 0,
)