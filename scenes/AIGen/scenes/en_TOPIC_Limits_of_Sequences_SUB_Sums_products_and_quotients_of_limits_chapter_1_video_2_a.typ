#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sums]
#v(40pt)
If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$, then $lim_(n -> infinity) (a_n + b_n)$ is \_\_\_\_\_. 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $L + M$]#only("2-")[#text(fill:green)[a) $L + M$]]
#v(10pt)  
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $L - M$]#only("3-")[#text(fill:red)[b) $L - M$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.  
#only("-3")[c) $L M$]#only("4-")[#text(fill:red)[c) $L M$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $L / M$]#only("5-")[#text(fill:red)[d) $L / M$]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) $L + M$ is indeed correct. When we add the limits of two sequences, we get the limit of their sum.")]
#only("3")[#voiceover("Option b) $L - M$ is incorrect. We are not subtracting the limits here.")]  
#only("4")[#voiceover("Option c) $L M$ is also incorrect. We are not multiplying the limits in this case.")]
#only("5")[#voiceover("And option d) $L / M$ is incorrect as well. We are not dividing the limits.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)  
#only("1-")[Given: $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$]
#v(20pt)
#only("2-")[Step 1: Write the limit of the sum.]
#v(10pt)  
#only("3-")[$lim_(n -> infinity) (a_n + b_n)$]
#v(20pt)
#only("4-")[Step 2: Apply the limit sum property.]
#v(10pt)
#only("5-")[$lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(20pt)  
#only("6-")[Step 3: Substitute the given limits.]
#v(10pt)
#only("7-")[$L + M$]
#v(20pt)
#only("8-")[Therefore, $lim_(n -> infinity) (a_n + b_n) = L + M$. ✅]

#only("1")[#voiceover("Let's go through the solution step by step. We are given that the limit of sequence $a_n$ is $L$ and the limit of sequence $b_n$ is $M$.")]
#only("2")[#voiceover("In step 1, we write the limit we want to find, which is the limit of the sum of $a_n$ and $b_n$ as $n$ approaches infinity.")]  
#only("3")[#voiceover("This is written as the limit as $n$ approaches infinity of $a_n$ plus $b_n$.")]
#only("4")[#voiceover("In step 2, we apply the limit sum property. This property states that the limit of a sum is equal to the sum of the limits.")]
#only("5")[#voiceover("So we can write this as the limit of $a_n$ as $n$ approaches infinity plus the limit of $b_n$ as $n$ approaches infinity.")]
#only("6")[#voiceover("In step 3, we substitute the given limits. We know that the limit of $a_n$ is $L$ and the limit of $b_n$ is $M$.")]  
#only("7")[#voiceover("So we replace the limits with $L$ and $M$ respectively, giving us $L$ plus $M$.")]
#only("8")[#voiceover("Therefore, we can conclude that the limit of $a_n$ plus $b_n$ as $n$ approaches infinity is equal to $L$ plus $M$.")]
]