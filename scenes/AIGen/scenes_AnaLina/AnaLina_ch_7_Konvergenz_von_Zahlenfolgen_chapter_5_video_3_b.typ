#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zahlenfolge]
#v(40pt)
#align(center)[
$a_n = (-1)^n$
]
#v(40pt)
#only("1-")[Grenzwert? 🤔]
#only("1")[
#voiceover("Not quite. Let's see why the sequence a_n equals negative 1 to the power of n does not have a limit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erste Folgenglieder]
#v(40pt)
#only("1-")[
- $a_1 = (-1)^1 = -1$
- $a_2 = (-1)^2 = 1$  
- $a_3 = (-1)^3 = -1$
- $a_4 = (-1)^4 = 1$
]
// The first few sequence elements are listed on slide 1 and beyond
#only("1")[
#voiceover("Let's look at the first few elements of the sequence. a_1 equals negative 1 to the power of 1, which is negative 1. a_2 equals negative 1 squared, which is 1. a_3 is negative 1 again, and a_4 is 1 again.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beobachtung]
#v(40pt)
#only("1-")[
- Die Folge alterniert zwischen $-1$ und $1$ 🔄
]
#only("1")[
#voiceover("We can see that the sequence alternates between negative 1 and 1. It will continue to do so indefinitely.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert]
#v(40pt)
#only("1-")[
- Ein Grenzwert $a$ müsste die Bedingung erfüllen: 
  $∀ε>0 ∃N∈ℕ ∀n≥N: |a_n-a|<ε$ 📏
]
#only("1")[
#voiceover("For the sequence to have a limit a, it would need to satisfy the following condition: For every epsilon greater than 0, there exists a natural number N such that for all n greater than or equal to N, the absolute value of a_n minus a is less than epsilon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Widerspruch]
#v(40pt)
#only("1-")[
- Angenommen, es gäbe einen Grenzwert $a$ ❌
- Wähle $ε=1/2$
- Dann müsste $∃N∈ℕ ∀n≥N: |a_n-a|<1/2$ gelten
- Aber: $|a_n-a|$ ist immer $≥1$ (da $a_n$ immer $-1$ oder $1$ ist) 😕
]
// The proof by contradiction is outlined on slide 1 and beyond
#only("1")[
#voiceover("Let's assume, for the sake of contradiction, that there is a limit a. Choose epsilon to be 1/2. Then there would need to exist an N such that for all n greater than or equal to N, the absolute value of a_n minus a is less than 1/2. But the absolute value of a_n minus a is always greater than or equal to 1, because a_n is always either negative 1 or 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[
- Die Folge $a_n = (-1)^n$ hat keinen Grenzwert ❗
]
#only("1")[
#voiceover("This is a contradiction. Therefore, our initial assumption that there is a limit must be false. We conclude that the sequence a_n equals negative 1 to the power of n does not have a limit.")
]
]