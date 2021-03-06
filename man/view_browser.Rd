% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quick_view.r
\name{view_browser}
\alias{view_browser}
\title{View a browser (HTML) in the R viewer}
\usage{
view_browser(url)
}
\arguments{
\item{url}{An URL, created with *_browser}
}
\description{
View a browser (HTML) in the R viewer
}
\examples{
url = create_browser(sotu_data$tokens, sotu_data$meta, token_col = 'token', header = 'Speeches')

## the url
\donttest{
view_browser(url)   ## view browser in the Viewer
}
}
