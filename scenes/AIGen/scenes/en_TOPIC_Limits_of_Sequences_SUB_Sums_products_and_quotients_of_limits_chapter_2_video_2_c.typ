#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Products]
#v(40pt)
If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$, then $lim_(n -> infinity) (a_n b_n)$ is \_\_\_\_\_. 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) $L + M$]#only("2-")[#text(fill:red)[a) $L + M$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $L - M$]#only("3-")[#text(fill:red)[b) $L - M$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $L M$]#only("4-")[#text(fill:green)[c) $L M$]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $L / M$]#only("5-")[#text(fill:red)[d) $L / M$]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a, L plus M, is incorrect. We are not adding the limits here.")]
#only("3")[#voiceover("Similarly, option b, L minus M, is also incorrect. We are not subtracting the limits.")]
#only("4")[#voiceover("Option c, L M, is the correct answer. When taking the limit of a product, we multiply the individual limits.")]
#only("5")[#voiceover("Finally, option d, L divided by M, is incorrect. We are not dividing the limits in this case.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given: $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$]
#v(20pt)
#only("2-")[We want to find: $lim_(n -> infinity) (a_n b_n)$]
#v(20pt)  
#only("3-")[Theorem: If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$, then $lim_(n -> infinity) (a_n b_n) = L M$]
#v(20pt)
#only("4-")[Applying the theorem: $lim_(n -> infinity) (a_n b_n) = L M$]
#v(20pt)
#only("5-")[Therefore, the correct answer is c) $L M$. ✅]

#only("1")[#voiceover("Let's go through the solution step by step. We are given that the limit of the sequence a sub n as n approaches infinity is L, and the limit of the sequence b sub n as n approaches infinity is M.")]
#only("2")[#voiceover("We want to find the limit of the product of these two sequences, that is, the limit of a sub n times b sub n as n approaches infinity.")]
#only("3")[#voiceover("There is a theorem that states: If the limit of a sub n is L and the limit of b sub n is M as n approaches infinity, then the limit of their product a sub n times b sub n is equal to the product of their limits, L times M.")]
#only("4")[#voiceover("Applying this theorem to our problem, we get that the limit of a sub n times b sub n as n approaches infinity is equal to L times M.")]
#only("5")[#voiceover("Therefore, the correct answer is option c, L M. Remember, when taking the limit of a product, we multiply the individual limits.")]
]