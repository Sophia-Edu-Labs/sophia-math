#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildung]
// Der Titel "Lineare Abbildung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Um das Bild eines Vektors unter einer linearen Abbildung zu finden, \_\_\_\_ wir die Matrix mit dem Vektor.]
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
#only("5-")[d) dividieren]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von linearen Abbildungen testen. Um das Bild eines Vektors unter einer linearen Abbildung zu finden, was machen wir mit der Matrix und dem Vektor?")]
#only("2")[#voiceover("Addieren wir die Matrix und den Vektor,")]
#only("3")[#voiceover("oder subtrahieren wir die Matrix vom Vektor,")]
#only("4")[#voiceover("oder multiplizieren wir die Matrix mit dem Vektor,")]
#only("5")[#voiceover("oder dividieren wir die Matrix durch den Vektor?")]
]#questionDef(
questionText: "Um das Bild eines Vektors unter einer linearen Abbildung zu finden, multiplizieren wir die Matrix mit dem Vektor.",
answerOptions: ("addieren", "subtrahieren", "multiplizieren", "dividieren"),
correctAnswerIndex: 2,
)