#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
// Der Titel "Divergenz ins Unendliche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welche der folgenden Folgen divergiert ins Unendliche? 🚀]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $a_n = 1/n$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $b_n = n$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $c_n = (-1)^n$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $d_n = 1/(n^2)$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Folgen testen, die ins Unendliche divergieren. Welche der folgenden Folgen divergiert ins Unendliche?")]
#only("2")[#voiceover("Ist es die Folge a_n gleich eins durch n,")]
#only("3")[#voiceover("oder ist es die Folge b_n gleich n,")]
#only("4")[#voiceover("oder vielleicht die Folge c_n gleich minus eins hoch n,")]
#only("5")[#voiceover("oder ist es die Folge d_n gleich eins durch n Quadrat?")]
]#questionDef(
questionText: "Welche der folgenden Folgen divergiert ins Unendliche?",
answerOptions: ("$a_n = \\frac{1}{n}$", "$b_n = n$", "$c_n = (-1)^n$", "$d_n = \\frac{1}{n^2}$"),
correctAnswerIndex: 1,
)