% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html_misc.r
\name{add_tag}
\alias{add_tag}
\title{Wrap values in an HTML tag}
\usage{
add_tag(
  x,
  tag,
  attr_str = NULL,
  ignore_na = F,
  span_adjacent = F,
  doc_id = NULL
)
}
\arguments{
\item{x}{a vector of values to be wrapped in a tag}

\item{tag}{A character vector of length 1, specifying the html tag (e.g., "div", "h1", "span")}

\item{attr_str}{A character string of the same length as x (or of length 1).}

\item{ignore_na}{If TRUE, do not add tag if value is NA}

\item{span_adjacent}{If TRUE, include adjacent tokens with identical attr_str within the same tag}

\item{doc_id}{If span_adjacent is TRUE, The document ids are required to ensure that tags do not span from one document to another.}
}
\value{
a character vector
}
\description{
Wrap values in an HTML tag
}
\examples{
x = c("Obama","Bush")
add_tag(x, 'span')

## add attributes with the tag_attr function
add_tag(x, 'span',
        tag_attr(class = "president"))

## add style attributes with the attr_style function within tag_attr
add_tag(x, 'span',
        tag_attr(class = "president",
                 style = attr_style(`background-color` = 'rgba(255, 255, 0, 1)')))
}
