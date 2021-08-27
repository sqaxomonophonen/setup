#!/bin/sh

if ! which sqlite3 > /dev/null ; then
	echo "sqlite3 not found"
	exit 1
fi

DB="$HOME/.config/google-chrome/Default/Web Data"

if [ ! -f "$DB" ] ; then
	echo "database not found at \"$DB\""
	exit 1
fi

sqlite3 "$DB" <<SQL

INSERT INTO keywords (short_name, keyword, favicon_url, url, safe_for_autoreplace) VALUES
	('en.wikipedia.org', 'w', 'https://en.wikipedia.org/favicon.ico', 'https://en.wikipedia.org/wiki/Special:Search/{searchTerms}', 0),
	('Wiktionary', 'wt', 'https://en.wiktionary.org/static/favicon/wiktionary/en.ico', 'https://en.wiktionary.org/w/index.php?title=Special:Search&search={searchTerms}', 0),
	('ordnet', 'o', 'https://ordnet.dk/favicon.ico', 'https://ordnet.dk/ddo/ordbog?query={searchTerms}&tab=for', 0);
SQL
