\name{MiniACED}
\alias{MiniACED}
\alias{MiniACED.netman}
\alias{MiniACED.nodeman}
\alias{MiniACED.omega}
\alias{MiniACED.QQ}
\alias{MiniACED.stats}
\docType{data}
\title{A Subset of the ACED Model using Expert Parmeters}
\description{

  This is a subset of the full ACED model using only 6 competencies and 30 items.

  These are the expert models in the \code{\link[Peanut:Peanut-package]{Peanut}} format.
  The data frames are:
  \describe{
    \item{MiniACED.netman}{A manifest of networks.}
    \item{MiniACED.nodeman}{A manifest of nodes.}
    \item{MiniACED.omega}{The omega-matrix describing the
      competency model.}
    \item{MiniACED.QQ}{The Q-matrix describing the evidence
      models.}
    \item{MiniACED.stats}{A list of statistics to be reported.}
  }
}
\usage{data("MiniACED")}
\format{
  \code{MiniACED.netman} is  data frame with 36 rows (models) on the following 5 variables.
  \describe{
    \item{\code{Name}}{A character scalar, name of the network.}
    \item{\code{Title}}{A character scalar, longer name of the network}
    \item{\code{Hub}}{A character scalar, which compentency model
      this evidence model attaches to, or null for competency model.}
    \item{\code{Pathname}}{A character scalar, the name of the file
      where it is stored.}
    \item{\code{Description}}{A character scalar, a description of the network.}
  }

  \code{MiniACED.nodeman} is  data frame with 112 rows (multiple
  rows per node) with the following fields:
  \describe{
    \item{\code{Model}}{A character scalar, name of the network.}
    \item{\code{NodeName}}{A character scalar, the name of the node.}
    \item{\code{Hub}}{A character scalar, which compentency model
      this evidence model attaches to, or null for competency model.}
    \item{\code{NodeTitle}}{A character scalar, a longer name of the node.}
    \item{\code{NodeDescription}}{A character scalar, a description of the node.}
    \item{\code{NodeLabels}}{A character scalar, a comma separated
      list of labels the node has.}
    \item{\code{Continuous}}{A logical value, is the node continuous?}
    \item{\code{Nstates}}{An integer, number of states the node takes.
      Note the node will take up this many rows.}
    \item{\code{StateName}}{Name of the state.}
    \item{\code{StateTitle},\code{StateDescription}}{Not used.}
    \item{\code{StateValue}}{Effective theta value for this state.}
    \item{\code{LowerBound},\code{UpperBound}}{Not used.}
  }

  \code{MiniACED.omega} is a data frame with 14 rows corresponding
  to the competency variables and 34 columns with the following fields:
  \describe{
    \item{\code{Node}}{Name of the node.  Note, these are the possible
      replacements for \var{XXX}. }
    \item{\code{\var{XXX}}}{Logical vectors indicating if the variable
      in the column is a parent of the variable in the row.}
    \item{\code{Link}}{A character vector giving the name of the link
      function.}
    \item{\code{Rules}}{A character vector giving the name of the
      combination rule.}
    \item{\code{R2}}{A numeric vector giving the percentage of
      the row variable explained by the parents.}
    \item{\code{A.\var{XXX}}}{A numeric vector giving the weight
      given to the parent variable.}
    \item{\code{Intercept}}{A numeric vector giving information about
      whether the row variable is more or less prevelant than the parents.}
    \item{\code{PriorWeight}}{A numeric vector instructing how much
      to bias the learning algorithm towards the priors.}
  }

  \code{MiniACED.QQ} is a data frame with 35 rows corresponding to
  observable variables and 52 columns with the following fields:
  \describe{
    \item{\code{Model}}{Name of the model.}
    \item{\code{Node}}{Name of the node.}
    \item{\code{NStates}}{Number of states of the node.}
    \item{\code{State}}{The name of the state.}
    \item{\code{Link}}{The name of the link function.}
    \item{\code{LinkScale}}{Unused.}
    \item{\var{XXX}}{A logical vector 1 if the competency variable
      named in the column is a parent of the variable in the row.}
    \item{\code{Rules}}{The name of the combination rule used.}
    \item{\code{A.\var{XXX}}}{The weight given to the named parent.}
    \item{\code{B.\var{XXX}}}{Not used.}
    \item{\code{A}}{Not Used.}
    \item{\code{B}}{The difficulty of the item.}
    \item{\code{PriorWeight}}{The bias towards the prior parameters.}
  }

  \code{MiniACED.stats} is a data frame with 15 rows and 3 columns
  with the following fields:
  \describe{
    \item{\code{Name}}{A name for the statistic.}
    \item{\code{Fun}}{The name of the functional to be applied.}
    \item{\code{Node}}{The name of the node to which the functional
      will be applied.}
  }

}
\details{

  \code{MiniACED.netman} and \code{MiniACED.nodeman} contain
  the instructions for building the nets and nodes.

  \code{MiniACED.omega} contains instructions for building the
  competency model.

  \code{MiniACED.QQ} contains instructions for building the evidence
  models.  Note that items whose names differ only by the last letter
  share the same evidence model, so there are fewer rows than
  items in the \code{\link{ACED}} data set.

  \code{MiniACED.stats} describes the statistics which are to be
  reported.

}
\source{

  Shute, V. J., Hansen, E. G., & Almond, R. G. (2008).
  You Can’t Fatten A Hog by Weighing It—Or Can You? Evaluating
  an Assessment for Learning System Called ACED.
  \emph{International Journal of Artificial Intelligence in
  Education}, \strong{18}(4), 289–316.
  \url{http://www.ijaied.org/iaied/ijaied/abstract/Vol_18/Shute08.html}

}
\references{

  An online spreadsheet with these data frames is at:

\url{https://docs.google.com/spreadsheets/d/1oX4ndaEij_dWsap6YR_ZrQYWYUPD6urOsn4vzjBpZIQ/}

}
\examples{
data(MiniACED)
}
\seealso{
  \code{\link{FullACED}} for the full model.
  \code{\link{ACED}} for the response data.
}
\keyword{datasets}
