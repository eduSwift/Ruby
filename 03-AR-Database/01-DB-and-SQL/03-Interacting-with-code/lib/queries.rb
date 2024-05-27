require "sqlite3"
def artist_count(db)
  results = db.execute("SELECT COUNT (*) FROM artists;")
  results[0][0]
  # TODO: use `db` to execute an SQL query against the database.
  # Should return an integer of the number of artists.
end

def number_of_rows(db, table_name)
  results = db.execute("SELECT COUNT (*) FROM #{table_name};")
  results[0][0]
  # TODO: count number of rows in table table_name.
  # Should return an integer of the number of rows.
end

def sorted_artists(db)
  results = db.execute("SELECT name FROM artists ORDER BY name;")
  results.flatten
  # TODO: return array of artists' names sorted alphabetically.
  # Should return an array of strings sorted alphabetically.
end

def love_tracks(db)
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%love%'")
  results.flatten
  # TODO: return array of love songs' names.
  # Should return an array of strings (track names).
end

def long_tracks(db, min_length)
  results = db.execute("SELECT name FROM tracks WHERE milliseconds > #{min_length * 60_000} ORDER BY milliseconds;")
  results.flatten
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending).
  # Should return an array of strings.
end

def albums_per_artist(db)
  db.execute("SELECT artists.name, COUNT(*)
   FROM artists
   JOIN albums ON artists.id = albums.artist_id
   GROUP BY  artists.id ORDER BY artists.name")

  # TODO: return an array of arrays, each containing the artist's name and the number of albums they have
end
