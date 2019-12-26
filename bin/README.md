# bin
Shell scripts that make my life easier

## Table of Contents

- [get-data](#get-data)

## get-data <a name="get-data"></a>

The `get-data` shell script is a basic utility that facilitates fetching data
from a Postgres database and piping it to stdout in CSV format.

It reads your query via stdin and supports an optional, positional `uri`
argument that lets you specify the Postgres database against which you want to
execute your query.

You will need to have the `psql` Postgres client available on your local
machine; an alternative could be to use a Docker container, but hey this is a
script I use on my computer and I always have an installation of `psql`
`¯\_(ツ)_/¯`.

It copies the data from the server to your client using `psql`'s `\COPY`
command. This command is terminated by a newline character and not a semicolon,
so we chomp away any trailing semi-colons using `sed`.

As an example, suppose we have an `employee` table in a database called
`company` running on a local Postgres server. Then we could fetch all employees
in CSV format with

```sh
$ echo "select * from employee;" \
  | get-data 'postgres://localhost:5433/company' \
  > employee.csv
```

Alternatively, if we have a more complex query saved to a file called
`query.sql` we could output those results to a CSV as well:

```sh
$ cat query.sql \
  | get-data 'postgres://localhost:5433/company' \
  > query_results.csv
```
