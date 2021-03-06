DELETE FROM vote_notes;
DELETE FROM user_roles;
DELETE FROM restaurants;
DELETE FROM users;
DELETE FROM dishes;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password) VALUES
  ('Admin', 'admin@gmail.com', 'admin'),
  ('User', 'user@yandex.ru', 'password'),
  ('User2', 'user2@yandex.ru', 'password');

INSERT INTO user_roles (role, user_id)VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100000),
  ('ROLE_USER', 100001),
  ('ROLE_USER', 100002);


INSERT INTO restaurants (name, city, street, building) VALUES
  ('Строганофф', 'СПб', 'Невский пр.', 17),
  ('Terrassa', 'СПб', 'Лиговский пр.', 11),
  ('Столовая', 'СПб', 'Большая Коньшенная ул.', 43),
  ('McDonalds', 'СПб', 'Наб. Реки Фонтанки', 82);


INSERT INTO vote_notes (date, restaurant_id, user_id) VALUES
  ('2015-05-30', 100003, 100000),
  ('2015-05-30', 100004, 100001),
  ('2015-05-30', 100005, 100002),
  ('2015-05-31', 100006, 100000),
  ('2015-05-31', 100006, 100001),
  ('2015-05-31', 100003, 100002);


INSERT INTO dishes (name, price, restaurant_id, date) VALUES
  ('Борщ', 1.55, 100003, '2015-05-30'),
  ('Котлета', 1.10, 100003, '2015-05-30'),
  ('Оливье', 7.50, 100003, '2015-05-30'),
  ('Окрошка', 1.30, 100004, '2015-05-30'),
  ('Компот', 2.15, 100004, '2015-05-30'),
  ('Стейк', 10.55, 100004, '2015-05-30'),
  ('Омары', 1.20, 100005, '2015-05-30'),
  ('Мидии', 10.85, 100005, '2015-05-30'),
  ('Сосиска', 0.75, 100005, '2015-05-30'),
  ('Кортофельное пюре', 0.35, 100006, '2015-05-30'),
  ('Каша', 2.10, 100006, '2015-05-30'),
  ('Сэндвич', 10.50, 100006, '2015-05-30'),
  ('Шаверма', 1.55, 100003, '2015-05-31'),
  ('Бургер', 1.10, 100003, '2015-05-31'),
  ('Пицца', 7.50, 100003, '2015-05-31'),
  ('Щи', 1.30, 100004, '2015-05-31'),
  ('Солянка', 2.15, 100004, '2015-05-31'),
  ('Салат Цезарь', 10.55, 100004, '2015-05-31'),
  ('Салат из овощей', 1.20, 100005, '2015-05-31'),
  ('Капустка квашеная', 10.85, 100005, '2015-05-31'),
  ('Яичница', 0.75, 100005, '2015-05-31'),
  ('Голубцы', 0.35, 100006, '2015-05-31'),
  ('Перец фаршированный', 2.10, 100006, '2015-05-31'),
  ('Свинина по-французски', 10.50, 100006, '2015-05-31');