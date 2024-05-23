#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Sequence]
#v(40pt)
#only("-1")[- $a_n = 2n + 1$]
#v(20pt)
#only("2-")[- Find the 5th term]
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step. We are given the sequence a_n equals 2n plus 1.")
]
#only("2")[
#voiceover("Our task is to find the 5th term of this sequence.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Understand the Formula]
#v(40pt)
#only("-1")[- $a_n = 2n + 1$]
#v(20pt)
#only("2-")[- $n$ is the position of the term in the sequence]
#only("1")[
#voiceover("First, let's understand what the formula a_n equals 2n plus 1 means.")
]
#only("2")[
#voiceover("In this formula, n represents the position of the term in the sequence.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Substitute $n=5$]
#v(40pt)
#only("-1")[- $a_5 = 2(5) + 1$]
#v(20pt)
#only("2-")[- We want the 5th term, so $n=5$]
#only("1")[
#voiceover("We are looking for the 5th term. So we substitute n equals 5 into the formula.")
]
#only("2")[
#voiceover("This gives us a_5 equals 2 times 5 plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("-1")[- $a_5 = 2(5) + 1$]
#v(20pt)
#only("2-")[- $a_5 = 10 + 1$]
#v(20pt)
#only("3-")[- $a_5 = 11$]
#only("1")[
#voiceover("Now, let's simplify this expression.")
]
#only("2")[
#voiceover("2 times 5 equals 10. So we have a_5 equals 10 plus 1.")
]
#only("3")[
#voiceover("10 plus 1 equals 11. Therefore, the 5th term of the sequence, a_5, is equal to 11.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("-1")[- Given: $a_n = 2n + 1$ 📜]
#v(20pt)
#only("2-")[- Task: Find $a_5$ 🎯]
#v(20pt)
#only("3-")[- Solution: $a_5 = 2(5) + 1 = 10 + 1 = 11$ ✅]
#only("1")[
#voiceover("To recap, we were given the sequence a_n equals 2n plus 1.")
]
#only("2")[
#voiceover("Our task was to find the 5th term, a_5.")
]
#only("3")[
#voiceover("We solved this by substituting n equals 5 into the formula, which gave us a_5 equals 2 times 5 plus 1. Simplifying this, we found that a_5 equals 11.")
]
]