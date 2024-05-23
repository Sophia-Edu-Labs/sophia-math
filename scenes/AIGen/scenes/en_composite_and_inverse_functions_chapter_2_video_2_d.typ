#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions in Modeling]
#v(40pt)
#only("1-")[Which scenario can be modeled by composite functions?]
#v(40pt)
#only("-1")[a) Speed and distance]#only("2-")[#text(fill:green)[a) Speed and distance]]
#v(10pt)
#only("-2")[b) Population and food supply]#only("3-")[#text(fill:green)[b) Population and food supply]]
#v(10pt)
#only("-3")[c) Temperature and energy consumption]#only("4-")[#text(fill:green)[c) Temperature and energy consumption]]
#v(10pt)
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]
#v(40pt)

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("a) Speed and distance can indeed be modeled by composite functions. For example, if s of t represents distance as a function of time, and v of t represents speed as a function of time, then s of t equals the integral of v of t dt.")]
#only("3")[#voiceover("b) Population and food supply can also be modeled by composite functions. If p of t is the population as a function of time, and f of p is the food supply as a function of population, then f of p of t represents the food supply as a function of time.")]
#only("4")[#voiceover("c) Temperature and energy consumption can be modeled by composite functions as well. If T of t is the temperature as a function of time, and E of T is the energy consumption as a function of temperature, then E of T of t represents the energy consumption as a function of time.")]
#only("5")[#voiceover("Therefore, d) All of the above is the correct answer. Composite functions are a powerful tool for modeling complex relationships in various fields.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Composite functions combine two or more functions 🧩]
#v(20pt)
#only("2-")[- The output of one function becomes the input of another 🔄]
#v(20pt)
#only("3-")[- This allows modeling of complex relationships 🌐]
#v(20pt)
#only("4-")[- Examples in various fields: 🌍]
  #only("5-")[- Physics (speed and distance) 🏎️]
  #only("6-")[- Biology (population and food supply) 🌿]
  #only("7-")[- Engineering (temperature and energy consumption) 🔋]
#v(20pt)  
#only("8-")[Therefore, composite functions are applicable in all the given scenarios. 📈]

#only("1")[#voiceover("Let's break down the solution step by step. Composite functions are functions that combine two or more functions.")]
#only("2")[#voiceover("In a composite function, the output of one function becomes the input of another function.")]
#only("3")[#voiceover("This property allows us to model complex relationships by chaining simpler functions together.")]
#only("4")[#voiceover("Composite functions find applications in various fields. For example:")]
#only("5")[#voiceover("In physics, speed and distance can be related through composite functions, where distance is the integral of speed over time.")]
#only("6")[#voiceover("In biology, population growth and food supply can be modeled as composite functions, where food supply depends on the population, which in turn varies with time.")]
#only("7")[#voiceover("In engineering, temperature and energy consumption can be linked through composite functions, where energy consumption is a function of temperature, which changes over time.")]
#only("8")[#voiceover("As composite functions are versatile in modeling relationships across different domains, all the given scenarios can potentially be modeled using composite functions.")]
]