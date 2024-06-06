#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $16^(1/4)$]
#v(40pt)
#only("1-")[That's right, great job! 🎉]
#v(20pt)
#only("2-")[Let's see how to simplify $16^(1/4)$ step by step:]
#v(20pt)
#only("3-")[- $16^(1/4) = (16^1)^(1/4)$]
#v(10pt)
#only("4-")[- $= (2^4)^(1/4)$]
#v(10pt)
#only("5-")[- $= 2^(4 dot 1/4)$]
#v(10pt)
#only("6-")[- $= 2^1$]
#v(10pt)
#only("7-")[- $= 2$]
#v(40pt)
#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("Let's see how to simplify 16 to the power of one fourth step by step:")]
#only("3")[#voiceover("First, we can rewrite 16 to the power of one fourth as 16 to the power of 1, all to the power of one fourth.")]
#only("4")[#voiceover("Now, 16 is the same as 2 to the power of 4, so we can rewrite it as 2 to the power of 4, all to the power of one fourth.")]
#only("5")[#voiceover("Using the power rule for exponents, we can simplify this to 2 to the power of 4 times one fourth.")]
#only("6")[#voiceover("4 times one fourth is just 1, so this simplifies to 2 to the power of 1.")]
#only("7")[#voiceover("And 2 to the power of 1 is just 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $16^(1/4)$]
#v(40pt)
#only("1-")[So, the correct answer is:]
#v(20pt)
// From the start until section 8, the option is black. From section 9 until the end it is then turned green, because it is correct. 
#only("-1")[a) 2]#only("2-")[#text(fill:green)[a) 2]]
#v(10pt)
// From the start until section 9, the option is black. From section 10 until the end it is then turned red, because it is false.
#only("-2")[b) 4]#only("3-")[#text(fill:red)[b) 4]]
#v(10pt)
// From the start until section 10, the option is black. From section 11 until the end it is then turned red, because it is false.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// From the start until section 11, the option is black. From section 12 until the end it is then turned red, because it is false.
#only("-4")[d) 16]#only("5-")[#text(fill:red)[d) 16]]

#only("1")[#voiceover("So, the correct answer is:")]
#only("2")[#voiceover("a) 2. Well done!")]
#only("3")[#voiceover("b) 4 is incorrect. Remember, we simplified 16 to the power of one fourth to 2, not 4.")]
#only("4")[#voiceover("c) 8 is also incorrect. We didn't arrive at 8 in our simplification process.")]
#only("5")[#voiceover("And d) 16 is incorrect as well. 16 was the original base, but after simplifying the expression, we got 2, not 16.")]
]