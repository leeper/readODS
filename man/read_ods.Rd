% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readODS.R
\name{read_ods}
\alias{read_ods}
\title{read data from ods files}
\usage{
read_ods(path = NULL, sheet = 1, col_names = TRUE, col_types = NULL,
  na = "", skip = 0, formula_as_formula = FALSE, range = NULL)
}
\arguments{
\item{path}{Path to the ods file.}

\item{sheet}{sheet to read. Either a string (the sheet name), or an integer sheet number. The default is 1.}

\item{col_names}{indicating whether the file contains the names of the variables as its first line.}

\item{col_types}{Either NULL to guess from the spreadsheet or a compact character combination of "c" (character), "i" (integer), "n" (number), "d" (double), "l" (logical), "D" (date), "T" (date time), "t" (time), ? (guess) or _/- (skip). For example, to convert a 3 column data.frame into character, character and integer, the character combination is "cci". NA will return a data frame with all columns being "text".}

\item{na}{Missing value. By default readODS converts blank cells to missing data.}

\item{skip}{the number of lines of the data file to skip before beginning to read data.}

\item{formula_as_formula}{a switch to display formulas as formulas "SUM(A1:A3)" or as the resulting value "3"... or "8"..}

\item{range}{selection of rectangle using Excel-like cell range, such as \code{range = "D12:F15"} or \code{range = "R1C12:R6C15"}. Cell range processing is handled by the \code{\link[=cellranger]{cellranger}} package.}
}
\value{
a data frame (\code{data.frame}) containing a representation of data in the ods file.
}
\description{
Funtion to read a single sheet from a ods file and return a data frame.
}
\note{
Currently, ods files that linked to external data source cannot be read. Merged cells cannot be parsed correctly.
}
\author{
Chung-hong Chan <chainsawtiney@gmail.com>
}

