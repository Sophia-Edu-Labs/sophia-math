#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Folgen]
// Der Titel "Konvergenz von Folgen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine Folge $a_n$ konvergiert gegen $L$, wenn für jedes $epsilon > 0$ ein $N$ existiert, so dass für alle $n >= N$ $|a_n - L|$ \_\_\_\_\_ ist.]
// Die Aussage über die Konvergenz wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) größer als $epsilon$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) kleiner als $epsilon$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) gleich $epsilon$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) ungleich $epsilon$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der Konvergenz von Folgen testen. Eine Folge a_n konvergiert gegen L, wenn für jedes epsilon größer als 0 ein N existiert, so dass für alle n größer oder gleich N der absolute Wert von a_n minus L...")]
#only("2")[#voiceover("größer als epsilon,")]
#only("3")[#voiceover("kleiner als epsilon,")]
#only("4")[#voiceover("gleich epsilon,")]
#only("5")[#voiceover("oder ungleich epsilon ist?")]
]#questionDef(
questionText: "Eine Folge $a_n$ konvergiert gegen $L$, wenn für jedes $\epsilon > 0$ ein $N$ existiert, so dass für alle $n \geq N$ $|a_n - L|$ \_\_\_\_\_ ist.",
answerOptions: ("größer als $\epsilon$", "kleiner als $\epsilon$", "gleich $\epsilon$", "ungleich $\epsilon$"),
correctAnswerIndex: 1,
)