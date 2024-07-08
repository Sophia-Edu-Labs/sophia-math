#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applications of Power Functions]
  #v(40pt)

  #only("1-")[Which of the following is an application of power functions?]
  #v(20pt)

  #only("2-")[a) Projectile motion 🚀]
  #v(10pt)
  #only("3-")[b) Population growth 👥]
  #v(10pt)
  #only("4-")[c) Temperature conversion 🌡️]
  #v(10pt)
  #only("5-")[d) Area of a circle 🔴]

  #only("1")[#voiceover("Let's explore applications of power functions. Which of the following scenarios do you think involves a power function?")]
  #only("2")[#voiceover("Is it projectile motion, where we study the path of an object thrown or launched into the air?")]
  #only("3")[#voiceover("Or could it be population growth, which models how the number of individuals in a population changes over time?")]
  #only("4")[#voiceover("Perhaps it's temperature conversion, where we convert temperatures between different scales?")]
  #only("5")[#voiceover("Or lastly, could it be the area of a circle, which relates the radius to the circle's area?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following is an application of power functions?", 
answerOptions: ("Projectile motion", "Population growth", "Temperature conversion", "Area of a circle"),
correctAnswerIndex: 3 
)