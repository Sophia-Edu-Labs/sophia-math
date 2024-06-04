#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Material für Tiefseetauchanzüge]
// Der Titel "Material für Tiefseetauchanzüge" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welches Material ist am besten geeignet für einen Tiefseetauchanzug, um hohen Drücken standzuhalten? 🤿]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Gummi 🧱]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Aluminium 🪨]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Stahl 🦾]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Kunststoff 🟥]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Tiefseetauchanzüge testen. Welches Material ist am besten geeignet für einen Tiefseetauchanzug, um hohen Drücken standzuhalten?")]
#only("2")[#voiceover("Ist es Gummi,")]
#only("3")[#voiceover("oder ist es Aluminium,")]
#only("4")[#voiceover("oder vielleicht Stahl,")]
#only("5")[#voiceover("oder ist es Kunststoff?")]
]#questionDef(
questionText: "Welches Material ist am besten geeignet für einen Tiefseetauchanzug, um hohen Drücken standzuhalten?",
answerOptions: ("Gummi", "Aluminium", "Stahl", "Kunststoff"),
correctAnswerIndex: 2,
)