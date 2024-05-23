#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Combinations]
#v(40pt)
Which of the following is a linear combination of the vectors $vec(u)$ and $vec(v)$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $vec(u) + vec(v)$]#only("2-")[#text(fill:green)[a) $vec(u) + vec(v)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $2 vec(u) - 3 vec(v)$]#only("3-")[#text(fill:green)[b) $2 vec(u) - 3 vec(v)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $-vec(u) + 4 vec(v)$]#only("4-")[#text(fill:green)[c) $-vec(u) + 4 vec(v)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a, u plus v, is indeed a linear combination. It's the sum of 1 times u and 1 times v.")]
#only("3")[#voiceover("Option b, 2 times u minus 3 times v, is also a linear combination. The scalars here are 2 and -3.")]
#only("4")[#voiceover("Option c, negative u plus 4 times v, is another linear combination. The scalars are -1 and 4.")]
#only("5")[#voiceover("And since all of these are linear combinations, option d, 'All of the above', is the correct answer. Well done!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Recall: A linear combination of vectors $vec(u)$ and $vec(v)$ is of the form $a vec(u) + b vec(v)$, where $a$ and $b$ are scalars.]
#v(20pt)
#only("2-")[Option a: $vec(u) + vec(v) = 1 vec(u) + 1 vec(v)$ ✅]
#v(20pt)
#only("3-")[Option b: $2 vec(u) - 3 vec(v) = 2 vec(u) + (-3) vec(v)$ ✅]
#v(20pt)
#only("4-")[Option c: $-vec(u) + 4 vec(v) = (-1) vec(u) + 4 vec(v)$ ✅]
#v(20pt)
#only("5-")[Therefore, all options are linear combinations, so d) All of the above is correct. 🌟]

#only("1")[#voiceover("Let's break this down step by step. Remember, a linear combination of vectors u and v is of the form a times u plus b times v, where a and b are any real numbers, also known as scalars.")]
#only("2")[#voiceover("Looking at option a, we see u plus v. This can be rewritten as 1 times u plus 1 times v. So it's a linear combination with scalars 1 and 1.")]
#only("3")[#voiceover("Option b is 2 times u minus 3 times v. This is already in the form of a linear combination, with scalars 2 and -3.")]
#only("4")[#voiceover("Option c, negative u plus 4 times v, can be rewritten as -1 times u plus 4 times v. Again, it's a linear combination with scalars -1 and 4.")]
#only("5")[#voiceover("Since all the given options are linear combinations of u and v, the correct answer is indeed d) All of the above. Great work on identifying that!")]
]