#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
// Der Titel "Slutsky-Zerlegung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut \_\_\_\_\_ macht.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) absolut billiger 💰]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) relativ billiger oder teurer 📈📉]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) absolut teurer 💸]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) keine der oben genannten ❌]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis des Substitutionseffekts in der Slutsky-Zerlegung testen. Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut leer macht.")]
#only("2")[#voiceover("Macht es das Gut absolut billiger,")]
#only("3")[#voiceover("oder relativ billiger oder teurer,")]
#only("4")[#voiceover("oder absolut teurer,")]
#only("5")[#voiceover("oder keine der oben genannten?")]
]#questionDef(
questionText: "Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut _____.",
answerOptions: ("absolut billiger", "relativ billiger oder teurer", "absolut teurer", "keine der oben genannten"),
correctAnswerIndex: 1
)