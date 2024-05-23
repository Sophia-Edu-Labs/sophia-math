#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence Quiz]
#v(40pt)
#only("1-")[Which of the following sequences converges? 🤔]
#v(40pt)
#only("2-")[a) $a_n = n$]
#v(10pt)
#only("3-")[b) $b_n = 1/n$]
#v(10pt)
#only("4-")[c) $c_n = (-1)^n$]
#v(10pt)
#only("5-")[d) $d_n = n^2$]

#only("1")[#voiceover("Let's test your understanding of sequence convergence. Which of the following sequences converges?")]
#only("2")[#voiceover("Is it the sequence a sub n equals n,")]
#only("3")[#voiceover("or the sequence b sub n equals 1 over n,")]
#only("4")[#voiceover("or maybe the sequence c sub n equals negative 1 to the power of n,")]
#only("5")[#voiceover("or is it the sequence d sub n equals n squared?")]
]#questionDef(
questionText: "Which of the following sequences converges?",
answerOptions: ("$a_n = n$", "$b_n = \\frac{1}{n}$", "$c_n = (-1)^n$", "$d_n = n^2$"),
correctAnswerIndex: 1,
)