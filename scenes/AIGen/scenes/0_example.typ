#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

//NOTE: max-repetitions is important, if more than 10 sub-steps (e.g. with "only") are used -> see polylux doc
#slide(max-repetitions:20)[
    //debug
    #counter(page).display() ->  #logic.logical-slide.display() (#logic.subslide.display())
    
    = Derivatives \ of Square Roots
    #only("1")[
      //make sure to have voiceover in an only, otherwise it is not uniquely assigned to a step 
      #voiceover("Hello and welcome to this test presentation. Nice that you are here. So far no transition was done.")
      #redPoint()
    ]
    #pause
    #only("-3")[
      $f(x) = (1-sqrt(3x))^3$
    ]
    #only("2")[
      #voiceover("Now the point should have started moving.")
      #redPoint(x:80pt, y: 120pt)
    ]
    #only("3")[
      #voiceover("And now it started to move just another time. Again!")
      #redPoint(x:55%, y: 22%)
    ]
    #only("4")[
      #voiceover("This is something how to highlight and also something that extends")
      $f(x) = (1-sqrt(3mathmorphbox(x, bgcolor:#yellow)))^3$
    ]
    #only("5")[
      #voiceover("As you see here now, the yellow box became a little bit larger. And guess what, it is still growing.")
      $f(x) = (1-#mathmorphbox(bgcolor:yellow)[$sqrt(3x)$])^3$
    ]
    #only("6")[
      #voiceover("huuuhps, it is growing even more. Amazing, isn't it?")
      $f(x) = (#mathmorphbox(bgcolor:yellow)[$1-sqrt(3x)$])^3$
    ]
    #only("7")[
      $f(x) = (#mathmorphbox(bgcolor:green)[$1-sqrt(3x)$])^3$
    ]
    #only("8")[
      #highlightLabelledBoxContent(<meq>, before: [$f(x) =$], area: [$\($], dw: 9pt, dh: 21pt, dy: -9pt, id: "h1")
      #highlightLabelledBoxContent(<meq>, before: [$f(x) = (1-sqrt(3x)$], area: [$\($], dw: 9pt, dh: 21pt, dy: -9pt, id: "h2")
      #box()[$f(x) = (#mathmorphbox(bgcolor:green,id:"bgmorph")[#morphchildren($1-sqrt(3x)$,id: "contentid")])^3$]<meq>
    ]
    #only("9")[
      $#mathmorphbox(bgcolor:green,id:"bgmorph")[#morphchildren($1-sqrt(3x)$, id: "contentid")]$
    ]
    #only("10-13")[
      #morphchildren([Hallo Welt, was ist das nur für ein langer Text], id: "contentid")
    ]   
    
]

#slide[
  #counter(page).display() ->  #logic.logical-slide.display() (#logic.subslide.display())
  Und hier wird jetzt was #only(2)[jeztt?????]





  hinzug

  gef+get


  oh man oh man 
  #morphchildren([Hallo Welt, was ist das nur für ein langer Text], id: "contentid")
]
#slide[
  #voiceover("Und das war's! Ciao!")
  und wieder zurück


  oh man oh man 
  #morphchildren([Hallo Welt, was ist das nur für ein langer Text], id: "contentid")
  #image(".typst-images/join-up-header.png", width: 80%)
]