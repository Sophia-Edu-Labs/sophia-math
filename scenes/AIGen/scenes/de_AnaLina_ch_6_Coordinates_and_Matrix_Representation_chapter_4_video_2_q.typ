#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Änderung der Basis]
// Der Titel "Änderung der Basis" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Die Änderung der Basis beinhaltet das Finden eines neuen Satzes von ____ Vektoren.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) abhängigen]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) unabhängigen]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Basis]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) orthogonalen]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Basisänderung testen. Die Änderung der Basis beinhaltet das Finden eines neuen Satzes von welcher Art von Vektoren?")]
#only("2")[#voiceover("Sind es abhängige Vektoren,")]
#only("3")[#voiceover("oder unabhängige Vektoren,")]
#only("4")[#voiceover("oder Basisvektoren,")]
#only("5")[#voiceover("oder orthogonale Vektoren?")]
]#questionDef(
questionText: "Die Änderung der Basis beinhaltet das Finden eines neuen Satzes von \\textit{Basis}vektoren.",
answerOptions: ("abhängigen", "unabhängigen", "Basis", "orthogonalen"),
correctAnswerIndex: 2,
)