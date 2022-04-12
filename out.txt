#' covid.by.county
#' US COVID 19 community levels by county as reported by the CDC
#' 
covid.by.county <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/covid-by-county.csv))
}
#' outpatient.viral.surveillance
#' National, Regional, and State Level Outpatient Illness and Viral Surveillance data pulled monthly from the cdc.
#' 
outpatient.viral.surveillance <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/outpatient-viral-surveillance.zip))
}
#' flu.testing
#' Age Group Distribution of Influenza Positive Specimens Reported by Public Health Laboratories
#' 
flu.testing <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/flu-testing.csv))
}
#' influenza.vaccine.effectiveness
#' Seasonal data since 2010 with vaccine effectiveness by age group.
#' 
influenza.vaccine.effectiveness <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/influenza-vaccine-effectiveness.csv))
}
#' influenza.burden
#' Seasonal data since 2010 with multiple measures to compare influenza burden by season.
#' 
influenza.burden <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/influenza-burden.csv))
}
#' test.burden
#' Test burden data from the CDC.
#' 
test.burden <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/test-burden.csv))
}
#' misc
#' Daily data on MISC cases vs COVID cases in the US.
#' 
misc <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/misc.csv))
}
#' flu
#' Flu vaccination rates stratified by race, county, and season.
#' 
flu <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/flu.csv))
}
#' cprd
#' All protocols scraped from the cprd website
#' 
cprd <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/cprd.csv))
}
#' breakthrough
#' Breakthrough data scraped from multiple states daily. Contains information on vaccinated vs unvaccinated hospitalizations and COVID cases.
#' 
breakthrough <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/breakthrough.csv))
}
#' covariants
#' CoVariants provides an overview of SARS-CoV-2 variants and mutations that are of interest. Here, you can find out what mutations define a variant, what impact they might have (with links to papers and resources), and where variants are found
#' 
covariants <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/covariants.csv))
}
#' caserates.by.age
#' Weekly case rates of COVID 19 by age group as reported by the CDC
#' 
caserates.by.age <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/caserates-by-age.csv))
}
#' deathcounts.by.age
#' This datasets is pulled daily from the CDC's data tracker for easier access. It provides weekly death counts secondary to COVID 19 stratified by age group.
#' 
deathcounts.by.age <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/deathcounts-by-age.csv))
}
#' deathrates.by.age
#' Weekly death rates of COVID 19 by age group as reported by the CDC
#' 
deathrates.by.age <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/deathrates-by-age.csv))
}
#' hospitalizations.by.age
#' Weekly hospitalizations of COVID 19 by age group as reported by the CDC
#' 
hospitalizations.by.age <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/datasets/hospitalizations-by-age.csv))
}
#' who.influenza
#' All of the WHO's influenza data describing case counts by influenza subtype by country and year.
#' 
who.influenza <- function() {
    read.csv(url(https://s3.amazonaws.com/quartzdata/who-influenza.csv))
}
