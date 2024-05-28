#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz gegen Unendlich]
// Der Titel "Divergenz gegen Unendlich" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine Folge $a_n$ divergiert gegen unendlich, wenn für jedes $M > 0$ ein $N$ existiert, sodass für alle $n \geq N$ $a_n$ \_\_\_\_\_ ist.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) kleiner als $M$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) größer als $M$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) gleich $M$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) ungleich $M$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der Divergenz gegen unendlich testen. Eine Folge a sub n divergiert gegen unendlich, wenn für jedes M größer als 0 ein N existiert, sodass für alle n größer oder gleich N, a sub n...")]
#only("2")[#voiceover("kleiner als M,")]
#only("3")[#voiceover("größer als M,")]
#only("4")[#voiceover("gleich M,")]
#only("5")[#voiceover("oder ungleich M ist?")]
]#questionDef(
questionText: "Eine Folge $a_n$ divergiert gegen unendlich, wenn für jedes $M > 0$ ein $N$ existiert, sodass für alle $n \geq N$ $a_n$ \_\_\_\_\_ ist.",
answerOptions: ("kleiner als $M$", "größer als $M$", "gleich $M$", "ungleich $M$"),
correctAnswerIndex: 1,
)