#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Given $a_n = 1/n$ and $b_n = 2/n$, find $lim_(n -> infinity) (a_n b_n)$.]
#only("1")[
#voiceover("That's not quite right. Let's go over the correct solution step by step. The problem asks us to find the limit of the product of two sequences a_n and b_n as n approaches infinity, where a_n equals 1 over n and b_n equals 2 over n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1]
#v(40pt)
#only("1-")[Recall the theorem: The limit of the product is the product of the limits.]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n b_n) = (lim_(n -> infinity) a_n) (lim_(n -> infinity) b_n)$]
#only("1")[
#voiceover("The first step is to recall the theorem that states: The limit of the product of two sequences is equal to the product of their limits.")
]
#only("2")[
#voiceover("Mathematically, this means that the limit of a_n times b_n as n approaches infinity is equal to the limit of a_n as n approaches infinity times the limit of b_n as n approaches infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2]
#v(40pt)
#only("1-")[Find $lim_(n -> infinity) a_n$:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) a_n = lim_(n -> infinity) 1/n = 0$]
#only("1")[
#voiceover("The next step is to find the limit of a_n as n approaches infinity.")
]
#only("2")[
#voiceover("We can see that a_n equals 1 over n. As n gets larger and larger, 1 over n gets closer and closer to 0. Therefore, the limit of a_n as n approaches infinity is 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3]
#v(40pt)
#only("1-")[Find $lim_(n -> infinity) b_n$:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) b_n = lim_(n -> infinity) 2/n = 0$]
#only("1")[
#voiceover("Similarly, we need to find the limit of b_n as n approaches infinity.")
]
#only("2")[
#voiceover("b_n equals 2 over n. Again, as n gets larger, 2 over n gets closer to 0. So the limit of b_n as n approaches infinity is also 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4]
#v(40pt)
#only("1-")[Apply the theorem:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n b_n) = (lim_(n -> infinity) a_n) (lim_(n -> infinity) b_n) = (0)(0) = 0$]
#only("1")[
#voiceover("Now we can apply the theorem from step 1.")
]
#only("2")[
#voiceover("The limit of a_n times b_n as n approaches infinity is equal to the limit of a_n, which is 0, times the limit of b_n, which is also 0. And 0 times 0 equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[Therefore, $lim_(n -> infinity) (a_n b_n) = 0$. 🎉]
#only("1")[
#voiceover("Therefore, we can conclude that the limit of a_n times b_n as n approaches infinity is equal to 0. Great work on solving this problem!")
]
]