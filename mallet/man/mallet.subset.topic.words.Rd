\name{mallet.subset.topic.words}
\alias{mallet.subset.topic.words}
\title{Estimate topic-word distributions from a sub-corpus}
\description{
This function returns a matrix of word probabilities for each topic similar to \code{\link{mallet.topic.words}}, but estimated from a subset of the documents in the corpus.
The model assumes that topics are the same no matter where they are used, but we know this is often not the case. This function lets us test whether some words are used more or less than we expect in a particular set of documents.
}
\usage{
mallet.subset.topic.words(topic.model, subset.docs, normalized=FALSE, smoothed=FALSE)
}
\arguments{
\item{topic.model}{The model returned by \code{MalletLDA}}
\item{subset.docs}{An array of TRUE/FALSE values specifying which documents should be used and which should be ignored.}
\item{normalized}{If true, normalize the rows so that each topic sums to one. If false, values will be integers (possibly plus the smoothing constant) representing the actual number of words of each type in the topics.}
\item{smoothed}{If true, add the smoothing parameter for the model (initial value specified as \code{beta} in \code{MalletLDA}). If false, many values will be zero.}
}
\seealso{\code{\link{mallet.topic.words}}}
\examples{
\dontrun{
nips.topic.words <- mallet.subset.topic.words(topic.model, documents$class == "NIPS",
		    				smoothed=T, normalized=T)
}
}