#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
What is $root(3, 8 8 27)$?
#v(40pt)
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
#only("-1")[b) 3]#only("2-")[#text(fill:red)[b) 3]]
#v(10pt) 
#only("-1")[c) 6]#only("2-")[#text(fill:green)[c) 6]]
#v(10pt)
#only("-1")[d) 9]#only("2-")[#text(fill:red)[d) 9]]

#only("1")[
#voiceover("That's right, great job! Let's see how we can solve this step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- $root(3, 8 8 27)$]
#v(20pt)
#only("2-")[= $root(3, 216)$]
#v(20pt)
#only("3-")[= $6$]
#v(20pt)
#only("4-")[⇒ The correct answer is c) 6 ✅]

#only("1")[
#voiceover("We start with the cube root of 8 times 8 times 27.")
]
#only("2")[
#voiceover("First, we simplify inside the root. 8 times 8 is 64, and 64 times 27 is 216. So we have the cube root of 216.")  
]
#only("3")[  
#voiceover("Now, what number, when cubed, gives 216? That number is 6, because 6 cubed, or 6 times 6 times 6, equals 216.")
]
#only("4")[
#voiceover("Therefore, the cube root of 216 is 6, and the correct answer is c) 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Simplify inside the root first 🧮]
#v(20pt)
#only("2-")[- Find the number that, when raised to the power of the root, gives the simplified value 🔍]
#v(20pt)
#only("3-")[- That number is the n-th root! 🎉]

#only("1")[
#voiceover("To recap, when solving for n-th roots, always simplify inside the root first if possible.")  
]
#only("2")[
#voiceover("Then, think about what number, when raised to the power of the root, would give you the simplified value inside the root.")
]  
#only("3")[
#voiceover("That number is your answer - the n-th root! Remember these steps and you'll be able to tackle n-th root problems with confidence.")
]
]