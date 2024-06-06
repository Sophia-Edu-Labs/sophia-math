#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Rational Exponents]
// The title "Simplifying Rational Exponents" is shown on this slide
#v(40pt)
#only("1-")[To simplify $(a^(m/n))^p$, we use the rule \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $(a^(m/n))^p = a^(m n p)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $(a^(m/n))^p = a^((m p)/n)$]
// Answer option b) is shown from slide 3 onward 
#v(10pt)
#only("4-")[c) $(a^(m/n))^p = a^(m/(n p))$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $(a^(m/n))^p = a^(n/(m p))$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on simplifying rational exponents. To simplify a to the power of m over n, all to the power of p, we use which rule?")]
#only("2")[#voiceover("Is it a to the power of m over n, all to the power of p equals a to the power of m times n times p,")]  
#only("3")[#voiceover("or is it a to the power of m over n, all to the power of p equals a to the power of m times p over n,")]
#only("4")[#voiceover("or maybe a to the power of m over n, all to the power of p equals a to the power of m over n times p,")]
#only("5")[#voiceover("or is it a to the power of m over n, all to the power of p equals a to the power of n over m times p?")]
]
#questionDef(
questionText: "To simplify $(a^{m/n})^p$, we use the rule _ _ _ _ _ .",
answerOptions: ("$(a^{m/n})^p = a^{mnp}$", "$(a^{m/n})^p = a^{(mp)/n}$", "$(a^{m/n})^p = a^{m/(np)}$", "$(a^{m/n})^p = a^{n/(mp)}$"),
correctAnswerIndex: 1,)