#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("In diesem Video erkläre ich dir, was drei em Aufgaben sind.")
  ]
  
  #text(size: 30pt, weight: "bold")[3 m Aufgaben]
  
  #v(40pt)
  
  #only("2-")[
    #text(size:24pt, weight:"bold")[Definition]
    #v(10pt)
    3 m steht für "3 Mindestens"
  ]
  #only("2")[
    #voiceover("drei em Aufgaben sind Aufgaben, bei denen es um 'drei mindestens' geht, also um drei verschiedene 'Mindestens'-Bedingungen.")
  ]
  
  #only("3-")[
    #v(20pt)
    #text(size:24pt, weight:"bold")[1. Mindestens]
    #v(10pt)
    Mindestanzahl an Versuchen
  ]
  #only("3")[
    #voiceover("Das erste 'Mindestens' bezieht sich auf eine Mindestanzahl an Versuchen oder Wiederholungen, zum Beispiel wie oft man mindestens würfeln oder an einem Spiel teilnehmen muss.")
  ]
  
  #only("4-")[
    #v(20pt)
    #text(size:24pt, weight:"bold")[2. Mindestens] 
    #v(10pt)
    Mindestanzahl an Erfolgen
  ]
  #only("4")[
    #voiceover("Das zweite 'Mindestens' geht um eine Mindestanzahl an Erfolgen oder Treffern, die man bei diesen Versuchen erzielen möchte, zum Beispiel mindestens einmal eine Sechs würfeln oder mindestens ein Spiel gewinnen.")
  ]
  
  #only("5-")[  
    #v(20pt)
    #text(size:24pt, weight:"bold")[3. Mindestens]
    #v(10pt)
    Mindestwahrscheinlichkeit für Erfolg
  ]
  #only("5")[
    #voiceover("Das dritte 'Mindestens' ist eine Mindestwahrscheinlichkeit, mit der man die geforderte Anzahl an Erfolgen erreichen möchte, zum Beispiel will man mit mindestens 95% Wahrscheinlichkeit mindestens eine Sechs würfeln.")
  ]
]

