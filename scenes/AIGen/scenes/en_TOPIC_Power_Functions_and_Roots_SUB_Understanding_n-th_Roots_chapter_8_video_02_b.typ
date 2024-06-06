#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Applications of n-th Roots]
#v(40pt)
Which of the following is an application of n-th roots?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Calculating interest rates]#only("2-")[#text(fill:green)[a) Calculating interest rates]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Determining speeds]#only("3-")[#text(fill:green)[b) Determining speeds]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Measuring distances]#only("4-")[#text(fill:green)[c) Measuring distances]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]
#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("Calculating interest rates indeed involves n-th roots. For example, the formula for the annual percentage yield often uses an n-th root, where n is the number of compounding periods per year.")]
#only("3")[#voiceover("Determining speeds also makes use of n-th roots. In fluid dynamics, the n-th root mean speed is a generalized mean used to calculate the speed of fluids and gases.")]
#only("4")[#voiceover("Measuring distances can involve n-th roots as well. In mathematics, the n-th root of the sum of n-th powers of the coordinates gives the generalized mean distance in a Euclidean space.")]
#only("5")[#voiceover("Therefore, all of the above - calculating interest rates, determining speeds, and measuring distances - are applications of n-th roots.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- n-th roots are used in various real-world applications 🌍]
#v(20pt)
#only("2-")[- Calculating interest rates 📈]
  - Annual Percentage Yield (APY) formula
  - $APY = (1 + r/n)^n - 1$, where $r$ is the nominal rate and $n$ is the number of compounding periods per year
#v(20pt)  
#only("3-")[- Determining speeds 🚗💨]
  - n-th root mean speed in fluid dynamics
  - $v_n = (1/n sum_(i=1)^n v_i^n)^(1/n)$, where $v_i$ are the individual speeds
#v(20pt)  
#only("4-")[- Measuring distances 📏]
  - Generalized mean distance in Euclidean space
  - $d_n = (sum_(i=1)^n x_i^n)^(1/n)$, where $x_i$ are the coordinates
#v(20pt)  
#only("5-")[Therefore, the correct answer is d) All of the above ✅]

#only("1")[#voiceover("Let's look at this step-by-step. n-th roots are indeed used in various real-world applications.")]
#only("2")[#voiceover("In calculating interest rates, the Annual Percentage Yield formula often involves an n-th root, where n is the number of compounding periods per year. The formula is APY equals the n-th root of the quantity 1 plus r over n, minus 1, where r is the nominal rate.")]
#only("3")[#voiceover("For determining speeds, the n-th root mean speed is used in fluid dynamics. It's calculated as the n-th root of the average of the n-th powers of the individual speeds.")]
#only("4")[#voiceover("In measuring distances, the generalized mean distance in a Euclidean space is given by the n-th root of the sum of the n-th powers of the coordinates.")]
#only("5")[#voiceover("So, all of these fields - interest rates, speeds, and distances - make use of n-th roots. Therefore, the correct answer is d) All of the above.")]
]