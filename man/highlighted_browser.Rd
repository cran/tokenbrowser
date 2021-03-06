% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tokenvis.r
\name{highlighted_browser}
\alias{highlighted_browser}
\title{Convert tokens into full texts in an HTML file with highlighted tokens}
\usage{
highlighted_browser(
  tokens,
  value,
  meta = NULL,
  col = "yellow",
  doc_col = "doc_id",
  token_col = "token",
  doc_nav = NULL,
  token_nav = NULL,
  filename = NULL,
  unfold = NULL,
  span_adjacent = T,
  ...
)
}
\arguments{
\item{tokens}{A data.frame with a column for document ids (doc_col)
and a column for tokens (token_col)}

\item{value}{Either a logical vector or a numeric vector with
values between 0 and 1. If a logical vector is used, then tokens
with TRUE will be highlighted (with the color specified in pos_col).
If a numeric vector is used, the value determines the alpha (transparency),
with 0 being fully transparent and 1 being fully colored.}

\item{meta}{A data.frame with a column for document_ids (doc_col). All other columns are added
to the browser as document meta}

\item{col}{The color used to highlight}

\item{doc_col}{The name of the document id column}

\item{token_col}{The name of the token column}

\item{doc_nav}{The name of a column in meta, used to set a navigation tag}

\item{token_nav}{Alternative to doc_nav, a column in the tokens, used to set a navigation tag}

\item{filename}{Name of the output file. Default is temp file}

\item{unfold}{Either a character vector or a named list of vectors of the same length as tokens. If given, all tokens with a tag can be clicked on to unfold the given text. If a list of vectors is given,
the values of the columns are concatenated with the column name. E.g. list(doc_id = 1, sentence = 1) will be [doc_id = 1, sentence = 2].}

\item{span_adjacent}{If TRUE, include adjacent tokens with identical attributes within the same tag}

\item{...}{Additional formatting arguments passed to create_browser()}
}
\value{
The name of the file where the browser is saved. Can be opened conveniently from within R using browseUrl()
}
\description{
Convert tokens into full texts in an HTML file with highlighted tokens
}
\examples{
## as an example, highlight words based on word length
highlight = nchar(as.character(sotu_data$tokens$token))
highlight = highlight / max(highlight)
highlight[highlight < 0.3] = NA
url = highlighted_browser(sotu_data$tokens, value = highlight, sotu_data$meta)

\donttest{
view_browser(url)   ## view browser in the Viewer
}
if (interactive()) {
browseURL(url)     ## view in default webbrowser
}
}
