\name{blankURLs}
\alias{blankURLs}
\alias{url_regex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Remove URLs From Text
}
\description{
  Removes URLs from text, replacing them with empty strings within
  the surrounding text. Also removes LaTeX style \code{\\href} and
  \code{\\url} commands.
}
\usage{
blankURLs(lines)
url_regex
}
\arguments{
  \item{lines}{a character vector of text to remove URLs from.}
}
\details{
This function is intended to primarily be used within pre-processing
filters passed to \code{\link[pkg:utils]{aspell}}.

URLs are detected by matching \code{url_regex}.
}
\value{\code{lines} with the URLs within the text removed.
}
\seealso{
\code{\link[pkg:utils]{aspell}}, \code{\link{SweaveTeXFilter}} (which calls it).
}
\examples{
txt <- c("hello there",
         "this url http://stuff.org/things\%20are\%2Cweird is bad for LaTeX parsing",
         "ftp://works.too",
         "https://notreal.com",
         "ftps://stuff.here",
         "sftp://also.here")
         
blankURLs(txt)

url_regex
}
