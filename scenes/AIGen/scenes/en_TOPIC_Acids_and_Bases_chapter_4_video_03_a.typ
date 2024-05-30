#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH and pOH]
#v(40pt)
#only("1-")[- pH + pOH = 14]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step. We know that pH and pOH are related by the equation pH plus pOH equals 14.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- pH = 5]
#only("1")[
#voiceover("In this problem, we are given that the pH of the solution is 5.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Write the Equation]
#v(40pt)
#only("1-")[$ "pH" + "pOH" = 14 $]
#only("1")[
#voiceover("Let's write out the equation relating pH and pOH. pH plus pOH equals 14.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Substitute the Given pH]
#v(40pt)
#only("1-")[$ 5 + "pOH" = 14 $]
#only("1")[
#voiceover("Now, we substitute the given pH value of 5 into the equation. 5 plus pOH equals 14.")
]  
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Solve for pOH]
#v(40pt)
#only("1-")[$ "pOH" = 14 - 5 $]
#v(20pt)
#only("2-")[$ "pOH" = 9 $]
#only("1")[
#voiceover("To solve for pOH, we subtract 5 from both sides of the equation.")
]
#only("2")[  
#voiceover("14 minus 5 equals 9. Therefore, the pOH of the solution is 9.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Answer]
#v(40pt)  
#only("1-")[pOH = 9 ✅]
#only("1")[
#voiceover("In conclusion, if the pH of a solution is 5, the pOH of the solution is 9. Excellent work!")
]
]