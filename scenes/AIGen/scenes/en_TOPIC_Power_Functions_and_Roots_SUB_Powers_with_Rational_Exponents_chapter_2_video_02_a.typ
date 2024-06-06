#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify $4^(1/2) 4^(1/2)$]
#v(40pt)
#only("1-")[Which of the following is the correct simplification of $4^(1/2) 4^(1/2)$?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) 4]#only("3-")[#text(fill:green)[b) 4]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) 16]#only("5-")[#text(fill:red)[d) 16]]
#only("1")[#voiceover("Not quite, but let's see the correct solution step by step.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Recall the rule for multiplying powers with the same base: $a^m a^n = a^(m+n)$ 🧮]
#v(20pt)
#only("2-")[2. In this case, $4^(1/2) 4^(1/2) = 4^((1/2)+(1/2))$ ✍]
#v(20pt)
#only("3-")[3. Simplify the exponent: $(1/2) + (1/2) = 2/2 = 1$ 🎯]
#v(20pt)
#only("4-")[4. Therefore, $4^(1/2) 4^(1/2) = 4^1 = 4$ ✅]
#only("1")[#voiceover("First, let's recall the rule for multiplying powers with the same base. When we multiply powers with the same base, we add the exponents. In mathematical notation, this is written as a to the power of m times a to the power of n equals a to the power of m plus n.")]
#only("2")[#voiceover("In our problem, we have 4 to the power of one half times 4 to the power of one half. Following the rule we just discussed, this is equal to 4 to the power of one half plus one half.")]
#only("3")[#voiceover("Now, let's simplify the exponent. One half plus one half equals two halves, which simplifies to just 1.")]
#only("4")[#voiceover("Therefore, 4 to the power of one half times 4 to the power of one half equals 4 to the power of 1, which is simply 4. This is why option b) 4 is the correct answer.")]
]