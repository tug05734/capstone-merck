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

INSERT INTO products(product_id, product_condition, img_path, price, product_name, category_id, genre_id)
VALUES (1, 'New', 'images/album1.jpg', 10.99, 'Album1', 1, 9), (2, 'New', 'images/album2.jpg', 10.99, 'Album2', 1, 7), (3, 'New', 'images/album3.jpg', 10.99, 'Album3', 1, 6), (4, 'New', 'images/song1.jpg', 1.99, 'Song1', 1, 8), (5, 'New', 'images/guitar.jpg', 85.99, 'Guitar', 1, 1), (6, 'Used', 'images/keyboard.jpg', 40.99, 'Keyboard', 3, 5), (7, 'New', 'images/record.jpg', 15.99, 'Record', 4, 11)
ON CONFLICT (product_id) DO UPDATE
SET product_condition = excluded.product_condition, img_path = excluded.img_path, price = excluded.price, product_name = excluded.product_name, category_id = excluded.category_id, genre_id = excluded.genre_id;