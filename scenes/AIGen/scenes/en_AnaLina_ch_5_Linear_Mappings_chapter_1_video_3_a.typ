#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can solve this step by step.]
#only("1")[
#voiceover("Great job! That's absolutely right. Let's now break down the solution step by step to see how we arrive at this answer.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- $T: R^2 -> R^2$]
#v(20pt)
#only("2-")[- $T(mat(x; y)) = mat(x + y; x - y)$]
#v(20pt)
#only("3-")[- Find $T(mat(3; 4))$]
#only("1")[
#voiceover("We are given a linear transformation T that maps from the vector space R 2 to R 2.")
]
#only("2")[
#voiceover("T is defined as follows: for a vector (x; y), T maps it to the vector (x plus y; x minus y).")
]
#only("3")[
#voiceover("Our task is to find the result of applying T to the specific vector (3; 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify Components]
#v(40pt)
#only("1-")[- $mat(3; 4) = mat(x; y)$, where:]
#v(20pt)
#only("2-")[  - $x = 3$]
#v(10pt)
#only("3-")[  - $y = 4$]
#only("1")[
#voiceover("First, we identify the components of the input vector (3; 4). We can see that it corresponds to the general form (x; y), where")
]
#only("2")[
#voiceover("x equals 3, and")
]
#only("3")[
#voiceover("y equals 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Apply Transformation]
#v(40pt)
#only("1-")[- $T(mat(x; y)) = mat(x + y; x - y)$]
#v(20pt)
#only("2-")[- Substitute $x = 3$ and $y = 4$:]
#v(10pt)
#only("3-")[  - $T(mat(3; 4)) = mat(3 + 4; 3 - 4)$]
#only("1")[
#voiceover("Next, we recall the definition of the transformation T: it maps (x; y) to (x plus y; x minus y).")
]
#only("2")[
#voiceover("Now we can substitute the values x equals 3 and y equals 4 into this definition.")
]
#only("3")[
#voiceover("This gives us T of (3; 4) equals (3 plus 4; 3 minus 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("1-")[- $T(mat(3; 4)) = mat(3 + 4; 3 - 4)$]
#v(20pt)
#only("2-")[- Simplify:]
#v(10pt)
#only("3-")[  - $T(mat(3; 4)) = mat(7; -1)$]
#only("1")[
#voiceover("We have T of (3; 4) equals (3 plus 4; 3 minus 4).")
]
#only("2")[
#voiceover("Now we can simplify this expression.")
]
#only("3")[
#voiceover("3 plus 4 equals 7, and 3 minus 4 equals negative 1. So we get T of (3; 4) equals (7; negative 1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result 🎯]
#v(40pt)
#only("1-")[Therefore, $T(mat(3; 4)) = mat(7; -1)$.]
#only("1")[
#voiceover("Therefore, the result of applying the linear transformation T to the vector (3; 4) is the vector (7; negative 1). Great work on solving this problem step by step!")
]
]