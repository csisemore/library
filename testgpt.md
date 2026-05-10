import sqlite3

# Connect to SQLite database (creates file if it doesn't exist)
conn = sqlite3.connect("library.db")

# Create a cursor object
cursor = conn.cursor()

# SQL script to create the library table
create_table_query = """
CREATE TABLE IF NOT EXISTS library (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    isbn INTEGER,
    subject TEXT,
    publisher TEXT,
    edition INTEGER,
    type TEXT,
    bundle_name TEXT
);
"""

# Execute the SQL script
cursor.execute(create_table_query)

# Commit changes and close connection
conn.commit()
conn.close()

print("Library table created successfully.")
