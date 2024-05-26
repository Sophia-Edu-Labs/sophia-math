#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Quotient von Grenzwerten]
// Der Titel "Quotient von Grenzwerten" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (M != 0), dann ist $lim_(n -> infinity) (a_n / b_n)$ \_\_\_\_\_.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) L + M]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) L - M]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt  
#v(10pt)
#only("4-")[c) L M]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt) 
#only("5-")[d) L / M]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Grenzwerten testen. Wenn der Grenzwert der Folge a_n für n gegen unendlich gleich L ist und der Grenzwert der Folge b_n für n gegen unendlich gleich M ist, wobei M nicht null ist, was ist dann der Grenzwert des Quotienten von a_n geteilt durch b_n für n gegen unendlich?")]
#only("2")[#voiceover("Ist es L plus M,")]
#only("3")[#voiceover("oder ist es L minus M,")]
#only("4")[#voiceover("oder vielleicht L mal M,")]
#only("5")[#voiceover("oder ist es L geteilt durch M?")]
]#questionDef(
questionText: "Wenn $\lim_{n \to \infty} a_n = L$ und $\lim_{n \to \infty} b_n = M$ $(M \neq 0)$, dann ist $\lim_{n \to \infty} \left( \frac{a_n}{b_n} \\right)$ ____",
answerOptions: ("$L + M$", "$L - M$", "$LM$", "$\frac{L}{M}$"),
correctAnswerIndex: 3,
)