INSERT INTO roles(role_id, role)
VALUES (1,'USER')
ON CONFLICT (role_id) DO UPDATE
SET role = excluded.role;

INSERT INTO category(id, name)
VALUES (1, 'Album'), (2, 'Song'), (3, 'Instrument'), (4, 'Record'), (5, 'CD')
ON CONFLICT (id) DO UPDATE
SET name = excluded.name;