#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Adding Multiple Two-Digit Integers 🧮]
#v(40pt)
#only("1-")[- Real-world application: Budgeting 💰]
#only("2-")[- Multiple two-digit numbers to add 🔢]
#only("3-")[- Let's review the process step-by-step 📝]

#only("1")[
#voiceover("Let's review the process of adding multiple two-digit integers. This skill is crucial in many real-world situations, such as budgeting.")
]
#only("2")[
#voiceover("Imagine you're planning expenses for a week and need to add up several two-digit costs.")
]
#only("3")[
#voiceover("We'll go through this process step-by-step to refresh our understanding.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Addition Process]
#v(40pt)
#only("1-")[1️⃣ Align numbers vertically]
#v(10pt)
#only("2-")[2️⃣ Start with ones column]
#v(10pt)
#only("3-")[3️⃣ Carry over to tens column]
#v(10pt)
#only("4-")[4️⃣ Add tens column]
#v(10pt)
#only("5-")[5️⃣ Write final sum]

#only("1")[
#voiceover("First, we align the numbers vertically, making sure the ones digits and tens digits line up.")
]
#only("2")[
#voiceover("Then, we start by adding the ones column, from bottom to top.")
]
#only("3")[
#voiceover("If the sum in the ones column is 10 or greater, we carry over to the tens column.")
]
#only("4")[
#voiceover("Next, we add the tens column, including any carried numbers.")
]
#only("5")[
#voiceover("Finally, we write down the complete sum.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Weekly Expenses]
#v(20pt)
#only("1-")[
#align(center)[
 #table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon + center,
  [*Item*], [*Cost (\$)*],
  [Groceries], [45],
  [Gas], [38],
  [Movies], [24],
  [Dinner], [52]
)
]
]
#v(20pt)
#only("2-")[
#align(center)[
$
45 \
38 \
24 \
+ 52 \
----
$
]
]
#only("3-")[
#align(center)[
$
45 \
38 \
24 \
+ 52 \
----
159
$
]
]

#only("1")[
#voiceover("Let's look at an example of weekly expenses. We have groceries for 45 dollars, gas for 38 dollars, movies for 24 dollars, and dinner for 52 dollars.")
]
#only("2")[
#voiceover("We align these numbers vertically, lining up the ones and tens digits.")
]
#only("3")[
#voiceover("Adding from bottom to top: 2 plus 4 plus 8 plus 5 equals 19 in the ones column. We write down 9 and carry 1. Then 5 plus 2 plus 3 plus 4 plus the carried 1 equals 15 in the tens column. Our total is 159 dollars.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Align numbers vertically 📊]
#only("2-")[- Add from right to left ➡⬅]
#only("3-")[- Remember to carry over 🔄]
#only("4-")[- Practice makes perfect! 💪]

#only("1")[
#voiceover("To summarize, when adding multiple two-digit integers, remember to align the numbers vertically.")
]
#only("2")[
#voiceover("Always add from right to left, starting with the ones column and moving to the tens column.")
]
#only("3")[
#voiceover("Don't forget to carry over when necessary.")
]
#only("4")[
#voiceover("With practice, this process will become second nature, allowing you to quickly add multiple two-digit numbers in various real-life situations.")
]
]