CREATE TABLE spaceship(
  spaceship_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  manufacturer VARCHAR(255) NOT NULL
)