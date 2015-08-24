require 'sparql'
require 'rdf/ntriples'

a = ["db_tropes_split-1.nt","db_tropes_split-2.nt","db_tropes_split-3.nt","db_tropes_split-4.nt","db_tropes_split-5.nt","db_tropes_split-6.nt","db_tropes_split-7.nt","db_tropes_split-8.nt","db_tropes_split-9.nt","db_tropes_split-10.nt","db_tropes_split-11.nt","db_tropes_split-12.nt","db_tropes_split-13.nt","db_tropes_split-14.nt","db_tropes_split-15.nt","db_tropes_split-16.nt","db_tropes_split-17.nt","db_tropes_split-18.nt","db_tropes_split-19.nt","db_tropes_split-20.nt"]

#graph = RDF::Graph.load(a.first)

queryable = RDF::Repository.load(a.first)
