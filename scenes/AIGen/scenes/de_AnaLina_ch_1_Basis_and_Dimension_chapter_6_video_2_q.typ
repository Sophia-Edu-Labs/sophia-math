#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basiswechsel]
// Der Titel "Basiswechsel" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Um die Basis eines Vektors zu wechseln, verwenden wir die Basiswechselmatrix, die durch die neuen Basisvektoren als \_\_\_\_\_ gebildet wird.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Zeilen]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Spalten]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Diagonalen]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) sowohl Zeilen als auch Spalten]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Um die Basis eines Vektors zu wechseln, verwenden wir die Basiswechselmatrix. Wie wird diese Matrix durch die neuen Basisvektoren gebildet?")]
#only("2")[#voiceover("Wird sie durch die neuen Basisvektoren als Zeilen gebildet,")]
#only("3")[#voiceover("oder wird sie durch die neuen Basisvektoren als Spalten gebildet,")]
#only("4")[#voiceover("oder vielleicht als Diagonalen,")]
#only("5")[#voiceover("oder werden die neuen Basisvektoren sowohl als Zeilen als auch als Spalten verwendet?")]
]#questionDef(
questionText: "Um die Basis eines Vektors zu wechseln, verwenden wir die Basiswechselmatrix, die durch die neuen Basisvektoren als \_\_\_\_\_ gebildet wird.",
answerOptions: ("Zeilen", "Spalten", "Diagonalen", "sowohl Zeilen als auch Spalten"),
correctAnswerIndex: 1,
)