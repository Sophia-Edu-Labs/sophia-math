#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $root(3, 27)$]
#v(40pt)
#only("1-")[Great job! You correctly simplified $root(3, 27)$. Let's review the solution step-by-step.]
#v(40pt)
#only("2-")[Step 1: Identify the cube root]
#v(20pt)
#only("2-")[- $root(3, 27)$ is the cube root of 27 🧊]
#v(40pt)
#only("3-")[Step 2: Find the number that, when cubed, equals 27]
#v(20pt)
#only("3-")[- $3 × 3 × 3 = 27$ ✅]
#v(40pt)
#only("4-")[Therefore, $root(3, 27) = 3$ 🎉]

#only("1")[#voiceover("Great job! You correctly simplified the cube root of 27. Let's review the solution step-by-step.")]
#only("2")[#voiceover("Step 1 is to identify that we are dealing with a cube root. The notation root 3 comma 27 represents the cube root of 27.")]
#only("3")[#voiceover("Step 2 is to find the number that, when multiplied by itself three times, equals 27. That number is 3, because 3 times 3 times 3 equals 27.")]
#only("4")[#voiceover("Therefore, the cube root of 27, written as root 3 comma 27, simplifies to 3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Multiple Choice]
#v(40pt)
#only("-1")[a) 1]
#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
#only("-2")[b) 2]
#only("3-")[#text(fill:red)[b) 2]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) 3]
#only("4-")[#text(fill:green)[c) 3]]
#v(10pt)
#only("-4")[d) 4]
#only("5-")[#text(fill:red)[d) 4]]

#only("1")[#voiceover("Let's review the multiple choice options.")]
#only("2")[#voiceover("Option a, 1, is incorrect. 1 cubed is 1, not 27.")]
#only("3")[#voiceover("Option b, 2, is also incorrect. 2 cubed is 8, not 27.")]
#only("4")[#voiceover("Option c, 3, is correct. As we saw, 3 cubed equals 27.")]
#only("5")[#voiceover("Finally, option d, 4, is incorrect. 4 cubed is 64, not 27.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $root(3, 27)$ is the cube root of 27 🧊]
#v(20pt)
#only("2-")[- To find the cube root, find the number that, when cubed, equals the original number 🔍]
#v(20pt)
#only("3-")[- $3 × 3 × 3 = 27$, so $root(3, 27) = 3$ ✅]
#v(20pt)
#only("4-")[Great work on simplifying this cube root! 🌟]

#only("1")[#voiceover("To summarize, root 3 comma 27 represents the cube root of 27.")]
#only("2")[#voiceover("To find the cube root, we need to find the number that, when multiplied by itself three times, equals the original number.")]
#only("3")[#voiceover("Since 3 times 3 times 3 equals 27, the cube root of 27, written as root 3 comma 27, simplifies to 3.")]
#only("4")[#voiceover("Great work on simplifying this cube root! Keep up the excellent work.")]
]