% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phrasemachine.R
\name{phrasemachine}
\alias{phrasemachine}
\title{POS tag and extract phrases from a collection of documents}
\usage{
phrasemachine(documents, regex = "(A|N)*N(PD*(A|N)*N)*",
  maximum_ngram_length = 8, minimum_ngram_length = 2,
  return_phrase_vectors = TRUE, return_tag_sequences = FALSE,
  memory = "-Xmx2g")
}
\arguments{
\item{documents}{A vector of strings (one per document).}

\item{regex}{The regular expression used to find phrases. Defaults to
"(A|N)*N(PD*(A|N)*N)*", the "SimpleNP" grammar in Handler et al. 2016. Can
also be "PhrasesNoCoord", which will be substituted for more complex noun
and verb-argument phrases (without coordination), or "Phrases", which will
be substituted for a very complex regular expression capturing noun and
verb-argument phrases with coordination. A vector of regular expressions may
also be provided if the user wishes to match more than one.}

\item{maximum_ngram_length}{The maximum length phrases returned. Defaults to
8. Increasing this number can greatly increase runtime.}

\item{minimum_ngram_length}{The minimum length phrases returned. Defaults to
2. Can be increased to remove shorter phrases, or decreased to include
unigrams.}

\item{return_phrase_vectors}{Logical indicating whether a list of phrase
vectors (with each entry contain a vector of phrases in one document) should
be returned, or whether phrases should combined into a single space separated
string.}

\item{return_tag_sequences}{Logical indicating whether tag sequences should
be returned along with phrases. Defaults to FALSE.}

\item{memory}{The default amount of memory (512MB) assigned to the NLP
package to POS tag documents is often not enough for large documents, which
can lead to a "java.lang.OutOfMemoryError". The memory argument defaults to
"-Xmx2g" (2GB) in this package, and can be increased if necessary to
accomodate very large documents.}
}
\value{
A list object.
}
\description{
Extracts phrases from a set of documents using the
"FilterFSA" method in Handler et al. 2016.
}
\examples{
phrasemachine("Hello there my red good cat.")
}
