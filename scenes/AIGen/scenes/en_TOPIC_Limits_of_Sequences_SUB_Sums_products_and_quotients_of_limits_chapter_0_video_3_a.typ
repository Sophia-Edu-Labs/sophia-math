#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[
- Given sequence: $a_n = 2/n$
- Limit as $n$ approaches $infinity$
]
#only("1")[
#voiceover("Great job, that's the correct answer! Let's go through the solution step by step. We're given the sequence a sub n equals 2 over n, and we need to find the limit as n approaches infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Understand the Sequence]
#v(40pt)
#only("1-")[
- As $n$ increases, $2/n$ decreases
- Example: $a_1 = 2/1 = 2$, $a_{10} = 2/10 = 0.2$, $a_{100} = 2/100 = 0.02$
]
#only("1")[
#voiceover("First, let's understand the behavior of the sequence. As n increases, the fraction 2 over n decreases. For example, when n equals 1, a sub 1 equals 2 over 1, which is 2. When n equals 10, a sub 10 equals 2 over 10, which is 0.2. And when n equals 100, a sub 100 equals 2 over 100, which is 0.02.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Consider the Limit]
#v(40pt)
#only("1-")[
- As $n$ approaches $infinity$, $2/n$ approaches $0$
- Intuition: Dividing a constant by an increasingly large number
]
#only("1")[
#voiceover("Now, let's consider what happens in the limit. As n approaches infinity, 2 over n approaches 0. Intuitively, this makes sense because we're dividing a constant, 2, by an increasingly large number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Write the Limit]
#v(40pt)
#only("1-")[
$ lim_(n -> infinity) a_n = lim_(n -> infinity) 2/n = 0 $
]
#only("1")[
#voiceover("So, we can write the limit as the limit of a sub n as n approaches infinity equals the limit of 2 over n as n approaches infinity, which equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)  # n values from 1 to 99
a_n = 2 / n  # Sequence values

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 2/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Limit')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Sequence $a_n = 2/n$ as n approaches infinity')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visualization of the sequence. The blue dots represent the sequence values, and the red line represents the limit, which is 0. As you can see, as n increases, the sequence values get closer and closer to 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[
$ lim_(n -> infinity) a_n = lim_(n -> infinity) 2/n = 0 $
]
#only("1")[
#voiceover("In conclusion, the limit of the sequence a sub n equals 2 over n as n approaches infinity is equal to 0.")
]
]