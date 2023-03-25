#import "template.typ": *

#set page(numbering: "1", paper: "a4")
#init("Assignment 1", "Author", student_number: "1234")
#answer(
  "Question 1", 
  $X -> Y$
)

#answer(
  "Question 2",
  numbering_fmt: "1",
  "answer a",
  "answer b",
)

#answer(
  "Question 3",
  [answer $a$],
  "answer b",
)
