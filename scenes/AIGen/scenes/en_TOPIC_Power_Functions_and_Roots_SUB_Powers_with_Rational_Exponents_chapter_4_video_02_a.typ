#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify $(-8)^(1/3)$]
#v(40pt)
Which of the following is the correct simplification of $(-8)^(1/3)$?
#v(40pt)
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
#only("-2")[b) -2]#only("3-")[#text(fill:green)[b) -2]]
#v(10pt)
#only("-3")[c) 4]#only("4-")[#text(fill:red)[c) 4]]
#v(10pt)
#only("-4")[d) -4]#only("5-")[#text(fill:red)[d) -4]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a, 2, is incorrect. The cube root of a negative number is negative, not positive.")]
#only("3")[#voiceover("Option b, -2, is the correct answer. Let's see why in the next slide.")]
#only("4")[#voiceover("Option c, 4, is incorrect. The cube root of -8 is not 4.")]
#only("5")[#voiceover("And option d, -4, is also incorrect. While it has the correct sign, the absolute value is wrong.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Step 1: Understand the notation 📝]
#v(20pt)
#only("2-")[$(-8)^(1/3)$ means the cube root of -8, because $1/3$ is the reciprocal of $3$.]
#v(40pt)
#only("3-")[Step 2: Find the cube root 🧮]
#v(20pt)
#only("4-")[The cube root of -8 is -2, because $(-2)^3 = -8$.]
#v(40pt)
#only("5-")[Therefore, $(-8)^(1/3) = -2$. ✅]

#only("1")[#voiceover("Let's solve this step by step.")]
#only("2")[#voiceover("First, let's understand what the notation means. The exponent 1/3 is the reciprocal of 3, so this expression represents the cube root of -8.")]
#only("3")[#voiceover("Now, let's find the cube root.")]
#only("4")[#voiceover("The cube root of -8 is -2, because -2 cubed equals -8.")]
#only("5")[#voiceover("Therefore, the simplification of the expression -8 to the power of 1/3 is -2.")]
]