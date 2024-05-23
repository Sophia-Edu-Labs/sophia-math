#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
If $T$ is a linear mapping, then $T(0)$ is equal to:
#v(40pt)
#only("-1")[a) 0]#only("2-")[#text(fill:green)[a) 0]]
#v(10pt)
#only("-2")[b) 1]#only("3-")[#text(fill:red)[b) 1]]
#v(10pt)
#only("-3")[c) $T(1)$]#only("4-")[#text(fill:red)[c) $T(1)$]]
#v(10pt)
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Not quite, but let's see why a) 0 is the correct answer.")]
#only("2")[#voiceover("If $T$ is a linear mapping, then by definition, $T(0) = 0$. This is one of the fundamental properties of linear mappings.")]
#only("3")[#voiceover("b) 1 is incorrect. There's no general rule that states $T(0) = 1$ for linear mappings.")]
#only("4")[#voiceover("c) $T(1)$ is also incorrect. While $T(1)$ could equal 0 in some cases, it's not a general rule for all linear mappings.")]
#only("5")[#voiceover("d) None of the above is incorrect, because a) 0 is indeed the correct answer, as we saw earlier.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Proof]
#v(40pt)
#only("1-")[Let's prove that $T(0) = 0$ for a linear mapping $T$:]
#v(20pt)
#only("2-")[- By definition, $T(c u) = c T(u)$ for any scalar $c$ and vector $u$]
#v(20pt)
#only("3-")[- Let $c = 0$ and $u$ be any vector. Then:]
#v(20pt)
#only("4-")[$T(0 u) = 0 T(u)$]
#v(20pt)
#only("5-")[$T(0) = 0$]
#v(20pt)
#only("6-")[Thus, $T(0) = 0$ for any linear mapping $T$. ■]

#only("1")[#voiceover("Now, let's prove that $T(0) = 0$ for a linear mapping $T$.")]
#only("2")[#voiceover("By definition, a linear mapping satisfies $T(c u) = c T(u)$ for any scalar $c$ and vector $u$.")]
#only("3")[#voiceover("Let's choose $c = 0$ and let $u$ be any vector.")]
#only("4")[#voiceover("Then, we have $T(0 u) = 0 T(u)$.")]
#only("5")[#voiceover("Since $0 u = 0$ for any vector $u$, and $0 T(u) = 0$, we get $T(0) = 0$.")]
#only("6")[#voiceover("Thus, we've proven that $T(0) = 0$ for any linear mapping $T$. This completes the proof.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- For a linear mapping $T$, always $T(0) = 0$ 🎯]
#v(20pt)
#only("2-")[- This is a fundamental property of linear mappings 📜]
#v(20pt)
#only("3-")[- It follows from the definition $T(c u) = c T(u)$ 🧮]

#only("1")[#voiceover("The key takeaway is that for a linear mapping $T$, always $T(0) = 0$.")]
#only("2")[#voiceover("This is a fundamental property of linear mappings.")]
#only("3")[#voiceover("It follows directly from the definition of a linear mapping, which states that $T(c u) = c T(u)$ for any scalar $c$ and vector $u$.")]
]