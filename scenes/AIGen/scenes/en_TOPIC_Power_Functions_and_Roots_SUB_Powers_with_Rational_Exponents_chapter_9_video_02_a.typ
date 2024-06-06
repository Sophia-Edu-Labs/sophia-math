#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $(a^(m/n))^p$]
#v(40pt)
To simplify $(a^(m/n))^p$, we use the rule \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) $(a^(m/n))^p = a^(m n p)$]#only("2-")[#text(fill:red)[a) $(a^(m/n))^p = a^(m n p)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $(a^(m/n))^p = a^((m p)/n)$]#only("3-")[#text(fill:green)[b) $(a^(m/n))^p = a^((m p)/n)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $(a^(m/n))^p = a^(m/(n p))$]#only("4-")[#text(fill:red)[c) $(a^(m/n))^p = a^(m/(n p))$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $(a^(m/n))^p = a^(n/(m p))$]#only("5-")[#text(fill:red)[d) $(a^(m/n))^p = a^(n/(m p))$]]
#only("1")[#voiceover("Not quite. Let's figure it out together...")]
#only("2")[#voiceover("Option a is incorrect. It should be mp over n in the exponent, not mnp.")]
#only("3")[#voiceover("Option b, a to the power of mp over n, is indeed the correct rule for simplifying a to the power of m over n, all raised to the power of p.")]
#only("4")[#voiceover("Option c is incorrect. It should be mp over n in the exponent, not m over np.")]
#only("5")[#voiceover("And option d is also incorrect. It should be mp over n in the exponent, not n over mp.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Start with $(a^(m/n))^p$]
#v(20pt)
#only("2-")[2. Apply the rule: $(a^(m/n))^p = a^((m p)/n)$]
#v(20pt)
#only("3-")[3. Simplify the exponent: $m p/n$]
#v(20pt)
#only("4-")[4. The simplified form is $a^((m p)/n)$]
#only("1")[#voiceover("Let's go through the step-by-step solution.")]
#only("2")[#voiceover("We apply the rule that a to the power of m over n, all raised to the power of p, equals a to the power of mp over n.")]
#only("3")[#voiceover("We simplify the exponent by multiplying m and p in the numerator, keeping n in the denominator.")]
#only("4")[#voiceover("And that's it! The simplified form is a to the power of mp over n. Remember this rule for simplifying expressions with rational exponents raised to a power.")]
]