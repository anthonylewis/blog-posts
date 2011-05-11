
require 'DBI'

dbh = DBI.connect("DBI:ODBC:TestData")

sth = dbh.prepare("SELECT * FROM Table1")
sth.execute

puts sth.column_names.join("\t")

while row = sth.fetch
  puts row.join("\t")
end

sth.finish
dbh.disconnect

