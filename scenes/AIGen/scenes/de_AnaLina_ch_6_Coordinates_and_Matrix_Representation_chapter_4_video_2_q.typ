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
#only("1-")[Beim Basiswechsel geht es darum, ein neues Set von \_\_\_\_ Vektoren zu finden.]
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
#only("1")[#voiceover("Lass uns dein Verständnis des Basiswechsels testen. Beim Basiswechsel geht es darum, ein neues Set von welchen Vektoren zu finden?")]
#only("2")[#voiceover("Sind es abhängige Vektoren,")]
#only("3")[#voiceover("oder unabhängige Vektoren,")]
#only("4")[#voiceover("oder Basisvektoren,")]
#only("5")[#voiceover("oder orthogonale Vektoren?")]
]#questionDef(
questionText: "Beim Basiswechsel geht es darum, ein neues Set von \\textit{Basis}vektoren zu finden.",
answerOptions: ("abhängigen", "unabhängigen", "Basis", "orthogonalen"),
correctAnswerIndex: 2,
)