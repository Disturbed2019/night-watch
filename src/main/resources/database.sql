INSERT INTO kino.t_role(id, name)
VALUES (1, 'ROLE_USER'), (2, 'ROLE_ADMIN');

# После того как зарегистрируется пользователь
INSERT INTO kino.t_user_roles(user_id, roles_id)
VALUES (1, 2);