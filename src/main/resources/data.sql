INSERT INTO roles(role_id, role)
VALUES (1,'USER')
ON CONFLICT (role_id) DO UPDATE
SET role = excluded.role;

INSERT INTO category(id, name)
VALUES (1, 'Album');
INSERT INTO category(id, name)
VALUES (2, 'Song');