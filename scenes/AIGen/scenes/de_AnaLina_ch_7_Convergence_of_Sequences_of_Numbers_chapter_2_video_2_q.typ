#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Quiz de Convergencia]
#v(40pt)
#only("1-")[¿Cuál de las siguientes secuencias converge? 🤔]
#v(40pt)
#only("2-")[a) $a_n = n$]
#v(10pt)
#only("3-")[b) $b_n = 1/n$]
#v(10pt)
#only("4-")[c) $c_n = (-1)^n$]
#v(10pt)
#only("5-")[d) $d_n = n^2$]

#only("1")[#voiceover("Vamos a probar tu comprensión de la convergencia de secuencias. ¿Cuál de las siguientes secuencias converge?")]
#only("2")[#voiceover("¿Es la secuencia a sub n igual a n,")]
#only("3")[#voiceover("o la secuencia b sub n igual a 1 sobre n,")]
#only("4")[#voiceover("o tal vez la secuencia c sub n igual a menos 1 elevado a la n,")]
#only("5")[#voiceover("o es la secuencia d sub n igual a n al cuadrado?")]
]#questionDef(
questionText: "¿Cuál de las siguientes secuencias converge?",
answerOptions: ("$a_n = n$", "$b_n = \\frac{1}{n}$", "$c_n = (-1)^n$", "$d_n = n^2$"),
correctAnswerIndex: 1,
)