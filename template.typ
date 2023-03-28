// This should be private but don't think Typst supports that (?)
#let box(contents) = {
  rect(
    fill: rgb(242,242,242), 
    stroke: 0.5pt,
    width: 100%,
    align(center)[#contents]
  )
}

// A simple, single question and answer
#let answer(question, term) = {
  [== #question]

  box(term)
}

// A question with multiple sub-questions and corresponding answers.
//
// The numbering can be configured by specifying the `numbering_fmt` parameter.
#let answer(question, numbering_fmt: "a", ..answers) = {
  [== #question]

  let length = answers.pos().len()
  for i in range(0, length) {
    let answer = answers.pos().at(i)
    let question_number = numbering(numbering_fmt, i+1) // Numbering must be non-negative

    [=== #question_number)]
    box(answer)
  }
}

// Sets the document title, author and optionally, a student number.
#let init(title, author, student_number: none) = {
  set document(title: title, author: author)

  align(top + left)[Student name: #author]

  if student_number != none {
    align(top + left)[Student number: #student_number]
  }

  align(center)[= #title]
}
