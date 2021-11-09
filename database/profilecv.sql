
-- Volcado de SQL de phpMyAdmin
-- versión 5.0.2
-- https://www.phpmyadmin.net/

-- Servidor: 127.0.0.1
-- Hora de creación: 16 de marzo de 2021 a las 20:54
-- Versión del servidor: 10.4.14-MariaDB
-- Versión PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- Database: `profilecv`



-- Table structure for `likes_post` . table


CREATE TABLE `likes_post` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--  datos para la tabla `likes_post`.


INSERT INTO `likes_post` (`id`, `id_user`, `id_post`, `likes`) VALUES
(1, 13, 39, 14),
(6, 13, 38, 3),
(11, 25, 23, 2),
(13, 25, 22, 4),
(17, 25, 40, 14),
(20, 25, 1, 2),
(27, 25, 41, 19),
(37, 23, 42, 11),
(49, 24, 43, 10);

-- 


-- Estructura de la tabla para la tabla `messages`


CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `id_user_from` int(11) NOT NULL,
  `id_user_to` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- datos para la tabla `mensajes`


INSERT INTO `messages` (`id`, `id_user_from`, `id_user_to`, `subject`, `content`, `time`) VALUES
(31, 15, 14, '<p> Hola <h1> Alex </h1></p>', 'Tengo unas ofertas justo para ti <br>\r\nLas quieres ?', '2021-10-30 07:44:08'),
(32, 24, 14, '<p> Hola <h1> Alex </h1></p>', 'Te veré hoy en la universidad', '2021-10-30 07:53:11'),
(35, 24, 14, 'Diego', 'En el mismo lugar<br>\r\nNos vemos esta noche', '2021-10-30 08:00:16'),
(52, 25, 13, 'Hola Lucia', 'Soy el Admin, me interesa tu perfil para un puesto de desarrolladora.', '2021-11-02 09:49:49'),
(53, 24, 13, 'Hola soy Diego', 'es un mensaje de prueba ', '2021-11-04 22:36:12'),
(55, 25, 14, 'De Admin:', 'Alex, Asegúrese de que su cuenta esté protegida', '2021-11-05 19:50:05'),
(56, 25, 13, 'De Admin:', 'Hola Lucia', '2021-03-16 19:51:16'),
(57, 25, 13, 'De Admin:', 'Asegúrese de que su cuenta esté protegida', '2021-11-05 19:51:46');

-- 


-- la tabla para la tabla `post`.


CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--  de datos para la tabla `post`


INSERT INTO `post` (`id`, `id_user`, `content`, `images`, `time`) VALUES
(18, 15, 'Soy Pepe y me gustaria conseguir practicas, tengo muchos deseos de aprender!!<br>\r\n!!',' pepe.jpg', '2021-10-29 17:50:38'),
(19, 14, '¿Cómo te va ?Este es mi CV \r\n<br> <b> Like  </b>Ayudame', 'alex.jpg', '2021-10-30 02:42:56'),
(20, 15, 'Hola<br>!!<b></b> Se ve bien mi perfil?\r\n<br> <b><i sytle=\"color : yellow\"> Puedes dejar un feedback </i></b>', 'pepe.jpg', '2021-10-30 03:25:34'),
(21, 15, 'Tengo <b> mucha </b> experiencia !', 'pepe.jpg', '2021-10-30 04:01:49'),
(22, 14, 'Hola a todos!\r\n<b> Like </b> and <b> share </b> me recomiendan? Tengo muy buena experiencia', 'alex.jpg', '2021-10-30 04:07:25'),
(23, 17, 'Me gusta poder aprender ', 'talia.jpg', '2021-10-30 04:08:39'),
(38, 13, 'soy lucia! y tengo mucha experiencia', 'lucia.jpg', '2021-10-31 08:44:40'),
(40, 25, 'Bienvenidos: Plaza disponible', 'adminpost1.jpg', '2021-10-31 09:20:08'),
(41, 25, 'Bienvenidos: En breve publicaremos una oferta', 'post1.jpg', '2021-10-31 09:26:46'),
(45, 23, 'Soy martin, tengo animos de empezar!', 'martin.jpg', '2021-11-01 08:00:30');

-- 

-- de datos para la tabla `user`


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `github` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--  `user`


INSERT INTO `user` (`id`, `name`, `email`, `birthday`, `password`, `phone`, `address`, `work`, `images`, `website`, `github`, `twitter`, `instagram`, `facebook`, `time`, `user_status`) VALUES
(13, 'Lucia', 'lucia@gmail.com', '2001-02-10', '202cb962ac59075b964b07152d234b70', '012345', 'Surco', 'Developer', '2.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:17:42', 0),
(14, 'Alex', 'alex@gmail.com', '2001-03-06', '202cb962ac59075b964b07152d234b70', '012345', 'La Molina', 'Front End', '4.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:17:51', 0),
(15, 'Pepe', 'pepe@gmail.com', '2000-06-04', '202cb962ac59075b964b07152d234b70', '012345', 'San Borja', 'Tester', '1.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:04', 0),
(16, 'Mia', 'mia@gmail.com', '1992-02-05', '202cb962ac59075b964b07152d234b70', '012345', 'Miraflores', 'Back End', '5.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:15', 0),
(17, 'Talia', 'talia@gmail.com', '2002-10-15', '202cb962ac59075b964b07152d234b70', '012345', 'San Isidro', 'PHP Dev', '6.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:24', 0),
(18, 'Karen', 'karen@gmail.com', '1995-09-27', '202cb962ac59075b964b07152d234b70', '012345', 'San Luis', 'JavaScript Dev', '7.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:32', 0),
(19, 'Luis', 'luis@gmail.com', '1999-05-12', '202cb962ac59075b964b07152d234b70', '012345', 'Barranco', 'Developer', '8.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:41', 0),
(20, 'Dante', 'dante@gmail.com', '2000-01-19', '202cb962ac59075b964b07152d234b70', '012345', 'Cieneguilla', 'Tester', '9.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:49', 0),
(21, 'Henry', 'henry@gmail.com', '1999-12-06', '202cb962ac59075b964b07152d234b70', '012345', 'Surco', 'CEO', '10.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:18:58', 0),
(22, 'Leslie', 'leslie@gmail.com', '1996-08-15', '202cb962ac59075b964b07152d234b70', '012345', 'Chorrillos', 'Senior C#', '11.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:19:15', 0),
(23, 'Martin', 'martin@gmail.com', '2003-05-06', '202cb962ac59075b964b07152d234b70', '012345', 'Miraflores', 'Node JS, React JS', '3.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '2021-11-04 22:19:07', 0),
(24, 'Diego', 'diego@gmail.com', '2000-12-18', '7363a0d0604902af7b70b271a0b96480', '012345', 'San Isidro', 'Fullstack JavaScript', '12.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', '22021-11-05 18:55:00', 0),
(25, 'Admin ', 'admin@gmail.com', '1999-12-11', '21232f297a57a5a743894a0e4a801fc3', '012345', 'La molina', 'Developer', '13.jpg', 'https://getbootstrap.com/', 'https://getbootstrap.com/', 'https://getbootstrap.com/', 'https://getbootstrap.com/', 'https://getbootstrap.com/', '2021-11-04 22:19:28', 1);


-- Índices para tablas 



-- Índice de la tabla `likes_post`


ALTER TABLE `likes_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_post` (`id_post`),
  ADD KEY `id_post_2` (`id_post`),
  ADD KEY `id_post_3` (`id_post`);


-- Índice de la tabla `mensajes`

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);


-- Índice de la tabla "publicación"

ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);


-- Índice de la tabla `usuario`

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT para tablas volcadas



-- AUTO_INCREMENT para la tabla `likes_post`

ALTER TABLE `likes_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;


-- AUTO_INCREMENT para la tabla `mensajes`

ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;


-- AUTO_INCREMENT para la tabla `post`

ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;


-- AUTO_INCREMENT para la tabla `usuario`

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
