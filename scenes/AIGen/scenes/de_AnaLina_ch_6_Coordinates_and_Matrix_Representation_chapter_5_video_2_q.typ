#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrixdarstellung mit Basiswechsel]
// Der Titel "Matrixdarstellung mit Basiswechsel" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Um die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis zu finden, müssen wir die ursprüngliche Matrix mit der Basiswechselmatrix ____ .]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) addieren]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) subtrahieren]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) multiplizieren]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) invertieren]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Matrixdarstellung mit Basiswechsel testen. Um die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis zu finden, müssen wir welche Operation an der ursprünglichen Matrix und der Basiswechselmatrix durchführen?")]
#only("2")[#voiceover("Müssen wir die ursprüngliche Matrix und die Basiswechselmatrix addieren,")]
#only("3")[#voiceover("oder müssen wir sie subtrahieren,")]
#only("4")[#voiceover("oder müssen wir sie multiplizieren,")]
#only("5")[#voiceover("oder müssen wir die Basiswechselmatrix invertieren?")]
]#questionDef(
questionText: "Um die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis zu finden, müssen wir die ursprüngliche Matrix mit der Basiswechselmatrix \$ \\text{multiplizieren} \$ .",
answerOptions: ("addieren", "subtrahieren", "multiplizieren", "invertieren"),
correctAnswerIndex: 2
)