% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module_data_summary.R
\name{module_data_summary}
\alias{module_data_summary}
\alias{ui_data_summary}
\alias{srv_data_summary}
\alias{get_filter_overview}
\alias{get_object_filter_overview}
\alias{get_object_filter_overview_array}
\alias{get_object_filter_overview_MultiAssayExperiment}
\title{Data summary}
\usage{
ui_data_summary(id)

srv_data_summary(id, teal_data)

get_filter_overview(teal_data)

get_object_filter_overview(
  filtered_data,
  unfiltered_data,
  dataname,
  subject_keys
)

get_object_filter_overview_array(
  filtered_data,
  unfiltered_data,
  dataname,
  subject_keys
)

get_object_filter_overview_MultiAssayExperiment(
  filtered_data,
  unfiltered_data,
  dataname
)
}
\arguments{
\item{id}{(\code{character(1)})
\code{shiny} module instance id.}

\item{teal_data}{(\code{reactive} returning \code{teal_data})}

\item{filtered_data}{(\code{list}) of filtered objects}

\item{unfiltered_data}{(\code{list}) of unfiltered objects}

\item{dataname}{(\code{character(1)})}
}
\value{
\code{NULL}.
}
\description{
Module and its utils to display the number of rows and subjects in the filtered and unfiltered data.
}
\details{
Handling different data classes:
\code{get_object_filter_overview()} is a pseudo S3 method which has variants for:
\itemize{
\item \code{array} (\code{data.frame}, \code{DataFrame}, \code{array}, \code{Matrix} and \code{SummarizedExperiment}): Method variant
can be applied to any two-dimensional objects on which \code{\link[=ncol]{ncol()}} can be used.
\item \code{MultiAssayExperiment}: for which summary contains counts for \code{colData} and all \code{experiments}.
}
}
\keyword{internal}
