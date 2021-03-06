\name{mallet.import}
\alias{mallet.import}
\title{Import text documents into Mallet format}
\description{
This function takes an array of document IDs and text files (as character strings) and converts them into a Mallet instance list.
}
\usage{
mallet.import(id.array, text.array, stoplist.file, preserve.case, token.regexp)
}
\arguments{
\item{id.array}{An array of document IDs.}
\item{text.array}{An array of text strings to use as documents. The type of the array must be \code{character}.}
\item{stoplist.file}{The name of a file containing stopwords (words to ignore), one per line. If the file is not in the current working directory, you may need to include a full path.}
\item{preserve.case}{By default, the input text is converted to all lowercase.}
\item{token.regexp}{A quoted string representing a regular expression that defines a token. The default is one or more unicode letter: "[\\\\p\{L\}]+". Note that special characters must have double backslashes.}
}
\seealso{\code{\link{mallet.word.freqs}} returns term and document frequencies, which may be useful in selecting stopwords.}
\examples{
\dontrun{
mallet.instances <- mallet.import(documents$id, documents$text, "en.txt",
		    		token.regexp = "\\\\p{L}[\\\\p{L}\\\\p{P}]+\\\\p{L}")
}
}