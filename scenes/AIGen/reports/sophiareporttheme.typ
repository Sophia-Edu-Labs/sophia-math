#import "@local/svg-emoji:0.1.0": setup-emoji, github, noto, emoji-image // only if you want to use GH names for emojis
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
// EMOJI stuff, see: https://github.com/polazarus/typst-svg-emoji/blob/main/lib.typ
// We need this manual mapping here, because the dict and the regexes in the typst-svg-emoji package seem to be broken for some emojis compounded from multiple unicode characters, like the number emojis below. Some people refer to this concept as "Unicode grapheme clusters".

#let primary-color = rgb("#4a90e2")
#let secondary-color = rgb("#f5a623")
#let tertiary-color = rgb("#50e3c2")
#let quaternary-color = rgb("#e74c3c")

#set page(
  margin: (x: 0cm, y: 0cm),
)

#set text(font: "Helvetica", size: 11pt)

#let bento-box(title, content, color) = {
  block(
    fill: color.lighten(80%),
    inset: 15pt,
    radius: 10pt,
    width: 100%,
    breakable: false,
  )[
    #text(weight: "bold", size: 14pt)[#title]
    #v(5pt)
    #align(top)[#content]
  ]
}

#let notooverridedict = noto.dict
#notooverridedict.insert("1️⃣", "noto-emoji/svg/emoji_u0031_20e3.svg")
#notooverridedict.insert("2️⃣", "noto-emoji/svg/emoji_u0032_20e3.svg")
#notooverridedict.insert("3️⃣", "noto-emoji/svg/emoji_u0033_20e3.svg")
#notooverridedict.insert("4️⃣", "noto-emoji/svg/emoji_u0034_20e3.svg")
#notooverridedict.insert("5️⃣", "noto-emoji/svg/emoji_u0035_20e3.svg")
#notooverridedict.insert("6️⃣", "noto-emoji/svg/emoji_u0036_20e3.svg")
#notooverridedict.insert("7️⃣", "noto-emoji/svg/emoji_u0037_20e3.svg")
#notooverridedict.insert("8️⃣", "noto-emoji/svg/emoji_u0038_20e3.svg")
#notooverridedict.insert("9️⃣", "noto-emoji/svg/emoji_u0039_20e3.svg")
#notooverridedict.insert("0️⃣", "noto-emoji/svg/emoji_u0030_20e3.svg")

#let notooverride = (
  dict: notooverridedict, 
  regex: "0️⃣|1️⃣|2️⃣|3️⃣|4️⃣|5️⃣|6️⃣|7️⃣|8️⃣|9️⃣|🔟|"+noto.regex
)

//we need the override to use the modified noto again
#let setup-emoji-overide(font: noto, height: 1em, body) = {
    show regex(notooverride.regex): it => {
        emoji-image(
            alt: it.text,
            height: height,
            notooverride.dict.at(it.text)
        )
    }
    // [with svg emoji font]
    body
}
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////



#let report-theme(
  body
) = {
  set page(
    paper: "a4",
    margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm)
  )
  set text(font: "Times New Roman", size: 12pt)
  set par(justify: true)
  
  body
}

// #let morphchildren(body, id: "defaultmorphid") = {
//     // we want to have the box in the background and only the box should get the morphtag/link -> we achieve this like the following:
//     return box([ //wrap this in a box (important!)
//         #link(id, [
//           #body
//         ])
//       ])    
// }
#let morphchildren(body, id: "defaultmorphid") = {
    // we want to have the box in the background and only the box should get the morphtag/link -> we achieve this like the following:
    return box({ //wrap this in a box (important!)
        return link(id, [
          #body
        ])
      })    
}

#let morphbox(body, id: "defaultmorphid", bgcolor: none, off: false) = {
  if off {body} 
  else {
    // we want to have the box in the background and only the box should get the morphtag/link -> we achieve this like the following:
    [ #box()[ //wrap this in a box (important!)
      #place(top + left)[
        #box()[
          #style(styles => {
            let size = measure(body, styles)
            [#link(id)[#rect(fill: bgcolor, width: size.width, height: size.height)]]
            
          })
        ]
      ]
      #body<bodylabel>
    ]
    ]
  }
}

#let mathmorphbox(body, id: "defaultmorphid", bgcolor: none, off: false) = {
  if off {body} 
  else {
    // we want to have the box in the background and only the box should get the morphtag/link -> we achieve this like the following:
    return box({ //wrap this in a box (important!)
      return (move(dy:1.5%, scale(y: 200%, place(bottom + left)[
        #box()[
          #style(styles => {
            let size = measure(body, styles)
            [#link(id)[#rect(fill: bgcolor, width: size.width, height: size.height)]]
            
          })
        ]
      ])),
      body).join()
    })
  }
}

#let redPoint(x: 10pt, y: 10pt, morphtag: "defaultmorphid") = {
  let cir = place(auto, float: true)[
          #circle(
            fill: rgb(255, 75, 70, 200),
            radius: 20pt,
            stroke: 0pt
          )
        ]
  return place(
      (top + left),move(
      dx: x, dy: y, 
      box()[
        #if morphtag == none { cir } else { [#link(morphtag)[#cir]] }
      ]
    ))
}

// #let eqMorphbox(label, id: "defaultmorphid", starti: 0, endi: 1) = {
//   return locate(loc => {
//       let elems = query(<eqtest>, loc)
//       let count = elems.len()
//       let elem = elems.first().body.children.at(4).base
//       return elem
//       let pos = elems.first().location().position()
//       style(styles => {
//         let i = starti
//         let size = (width: 0pt, height: 0pt)
//         while i < endi {
//           let newSize = measure(elems.first().body.children.at(i),styles)
//           size = (width: size.width + newSize.width, height: size.height + newSize.height)
//           i = i+1
//         }
            
//             [#place(top + left, dx: (pos.x)-55pt, dy: (pos.y)-55pt)[
//               #link(id)[#rect(fill: yellow, width: size.width, height: size.height)]]]
            
//           })
//     })
// }
#let eqMorphbox(label, id: "defaultmorphid", bgcolor: yellow, before: [], highlightarea: [#hide[42]]) = {
  return locate(loc => {
      let elems = query(<eqtest>, loc)
      let count = elems.len()
      let elem = elems.first().body.children.at(4).base
      let pos = elems.first().location().position()
      style(styles => {
          let beforeSize = measure(before,styles)
          let areaSize = measure(highlightarea,styles)        
            [#place(top + left, dx: (pos.x)-55pt+(beforeSize.width), dy: (pos.y)-55pt)[
              #link(id)[#rect(fill: bgcolor, width: areaSize.width, height: areaSize.height)]]]
            
          })
    })
}

#let highlightLabelledBox(label, id: "defaultmorphid", bgcolor: rgb(219, 242, 38, 150), w: 20pt, h: 20pt, dx: 0pt, dy: 0pt) = {
  let bgcolorwithtransparency = rgb(
    bgcolor.components().at(0), 
    bgcolor.components().at(1), 
    bgcolor.components().at(2), 150)
  return place(top+left)[
        #locate(loc => {
      let elems = query(label, loc)
      let elem = elems.first()
      let pos = elem.location().position()
      style(styles => {
          let size = measure(elem,styles)      
            [#place(top + left, dx: (pos.x)-55pt+dx, dy: (pos.y)-55pt+dy)[
              #link(id)[#rect(fill: bgcolorwithtransparency, width: w, height: h)]]]
          })
      })
      ]
}

#let highlightLabelledBoxContent(label, id: "defaultmorphid", bgcolor: yellow, before: [], area: [], dw: 0pt, dh: 0pt, dx: 0pt, dy: 0pt) = {
  return place(top+left)[
        #locate(loc => {
      let elems = query(<meq>, loc)
      let elem = elems.first()
      let pos = elem.location().position()
      style(styles => {
          let size = measure(elem,styles)      
          let beforeSize = measure(before,styles)      
          let areaSize = measure(area,styles)      
            [#place(top + left, dx: (pos.x)-55pt+dx+(beforeSize.width), dy: (pos.y)-55pt+dy)[
              #link(id)[#rect(fill: bgcolor, width: dw+(areaSize.width), height: dh+(areaSize.height))]]]
          })
      })
      ]
}

#let hide = it => it
#let colred(x) = text(fill: red, $#x$)


#let remove_empty_lines(str) = {
  let lines = str.split("\n")
  let non_empty_lines = lines.filter(line => line.trim() != "")
  non_empty_lines.join("\n")
}

#let dedent(s) = {
  // Split the string into lines
  let lines = s.split("\n")
  
  // Helper function to find minimum value in an array
  let min_value(arr) = {
    if arr.len() == 0 { return none }
    let min = arr.at(0)
    for val in arr {
      if val < min { min = val }
    }
    min
  }

  //DEBUG:
  // return lines
  //     .filter(line => line.trim() != "").map(line => {
  //       let leading_spaces = line.match(regex("^ *"))
  //       if leading_spaces != none { str(leading_spaces.text.len()) } else { str(0) }
  //     }).join("\n")
  
  // Find the minimum indentation
  let min_indent = min_value(
    lines
      .filter(line => line.trim() != "")
      .map(line => {
        let leading_spaces = line.match(regex("^ *"))
        if leading_spaces != none { leading_spaces.text.len() } else { 0 }
      })
  )

  //DEBUG:
  // return "min indent: "+str(min_indent)
  
  // If no lines with content, return original string
  if min_indent == none { return s }
  
  // Remove the common indentation from each line
  let dedented_lines = lines.map(line =>
    if line.trim() != "" {
      line.slice(min_indent, line.len())
    } else {
      line
    }
  )
  
  // Join the lines back into a single string
  dedented_lines.join("\n")
}

#let map_empty_lines(str) = {
  let lines = str.split("\n")
  let mapped_lines = lines.map(line => if line.trim() == "" { "\n" } else { line })
  mapped_lines.join("\n")
}

#let pyimage(code, width: auto, height: auto) = {
  let contents = json(".typst-images/contents.json")

  for content in contents {
    //DEBUG: 
    // return raw(dedent(map_empty_lines(content.code)).trim())
    // return content.code
    // return code.text
    if dedent(map_empty_lines(content.code)).trim() == dedent(map_empty_lines(code.text)).trim() {
      if content.keys().contains("error") and content.error != none{
        return box(fill: red, width: width, height: height)[#content.error]
      }
      return image.decode(content.output, format: "svg", width: width, height: height)
    }
  }

  return box(fill: red, width: width, height: height)[Image not found]
}

#let pyimagedebug(code, width: auto, height: auto) = {
  //uncomment the following to "undebug"
  // return pyimage(code, width: width, height: height)
  return raw(dedent(map_empty_lines(code.text)).trim())
}

#let pycontent(code, width: auto, height: auto) = {
  let contents = json(".typst-images/contents.json")

  for content in contents {
    // return content.code
    // return code.text
    if dedent(map_empty_lines(content.code)).trim() == dedent(map_empty_lines(code.text)).trim() {
      if content.keys().contains("error") and content.error != none{
        return box(fill: red, width: width, height: height)[#content.error]
      }

      return box(width: width, height: height)[#eval(content.output)]
    }
  }

  return box(fill: red, width: width, height: height)[Content not found]
}

