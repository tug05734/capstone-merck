INSERT INTO roles(role_id, role)
VALUES (1,'USER')
ON CONFLICT (role_id) DO UPDATE
SET role = excluded.role;

INSERT INTO category(id, name)
VALUES (1, 'Album'), (2, 'Song'), (3, 'Instrument'), (4, 'Record'), (5, 'CD')
ON CONFLICT (id) DO UPDATE
SET name = excluded.name;

INSERT INTO genre(id, name)
VALUES (1, 'Strings'), (2, 'Woodwind'), (3, 'Brass'), (4, 'Percussion'), (5, 'Keyboard'), (6, 'Rock'), (7, 'Hip Hop'), (8, 'Jazz'), (9, 'Pop'), (10, 'Blues'), (11, 'Country')
ON CONFLICT (id) DO UPDATE
SET name = excluded.name;