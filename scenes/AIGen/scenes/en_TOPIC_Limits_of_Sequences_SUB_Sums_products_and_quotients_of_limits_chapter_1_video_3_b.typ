#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Sum]
#v(40pt)
#only("1-")[- Given: $a_n = 1/n$ and $b_n = 2/n$]
// The given sequences are shown on slide 1 onward
#v(20pt)
#only("2-")[- Find: $lim_(n -> infinity) (a_n + b_n)$]
// The limit to find is shown on slide 2 onward
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step. We are given two sequences: a sub n equals 1 over n, and b sub n equals 2 over n.")
]
#only("2")[
#voiceover("We want to find the limit as n approaches infinity of the sum of these sequences, a sub n plus b sub n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Limit Laws 📜]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
// The limit law for the sum is shown on slide 1 onward
#only("1")[
#voiceover("The first step is to recall the limit law for the sum of sequences. It states that the limit of the sum is equal to the sum of the limits.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Individual Limits 🔍]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) a_n = lim_(n -> infinity) 1/n = 0$]
// The limit of a_n is shown on slide 1 onward
#v(20pt)
#only("2-")[- $lim_(n -> infinity) b_n = lim_(n -> infinity) 2/n = 0$]
// The limit of b_n is shown on slide 2 onward
#only("1")[
#voiceover("Next, we find the individual limits. The limit of a sub n as n approaches infinity is the limit of 1 over n, which equals 0.")
]
#only("2")[
#voiceover("Similarly, the limit of b sub n as n approaches infinity is the limit of 2 over n, which also equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Combine Results 🧮]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(20pt)
#only("2-")[- $= 0 + 0$]
#v(20pt)
#only("3-")[- $= 0$]
// The combination of the individual limits is shown step by step across slides 1-3
#only("1")[
#voiceover("Finally, we combine the results using the limit law from step 1. The limit of a sub n plus b sub n equals the limit of a sub n plus the limit of b sub n.")
]
#only("2")[
#voiceover("This is equal to 0 plus 0,")
]
#only("3")[
#voiceover("which equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)  
a_n = 1/n
b_n = 2/n
sum_n = a_n + b_n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='$a_n = 1/n$')
plt.plot(n, b_n, label='$b_n = 2/n$')
plt.plot(n, sum_n, label='$a_n + b_n$')
plt.axhline(y=0, color='r', linestyle='--', label='Limit = 0')  

plt.xlabel('n')
plt.ylabel('Value')
plt.title('Convergence of $a_n$, $b_n$, and $a_n + b_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// The graph shows the convergence of a_n, b_n, and their sum to 0 as n increases
#only("1")[
#voiceover("Here's a visual representation of the convergence. As n increases, both a sub n and b sub n approach 0, and so does their sum, a sub n plus b sub n, as shown by the red dashed line.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) = 0$ ✅]
// The final result is shown on slide 1 onward
#only("1")[
#voiceover("In conclusion, the limit as n approaches infinity of a sub n plus b sub n equals 0. Great work on solving this problem!")
]
]