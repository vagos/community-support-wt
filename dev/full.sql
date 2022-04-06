-- TESTING FOR NOW PROBABLY WON'T USE

#
# TABLE STRUCTURE FOR: activity
#

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `activity` (`id`, `name`, `description`) VALUES (1, 'beatae', 'Sit perspiciatis earum earum fuga aliquam. Itaque consequatur eligendi iste qui id praesentium nihil. Praesentium maiores animi quia aut vero ea rerum. Aut maiores voluptas beatae est.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (2, 'omnis', 'Quia delectus corrupti deleniti. Et ut sit libero excepturi sed incidunt officiis harum. Et magni ipsa quos consequatur consequatur quo. Dolores quae dolor sed voluptatem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (3, 'dolor', 'Commodi in impedit quia saepe consequatur qui beatae. Unde excepturi velit rem sit a ut. Provident distinctio sequi non ratione sit. Porro minus voluptas laborum excepturi quia.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (4, 'molestiae', 'Ut illum est autem et quia architecto vero. Fuga quas ut non dolores itaque praesentium. Id sit illum est non. Expedita ut vel in sed aut dolor.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (5, 'aut', 'Iste odit consequuntur sed totam necessitatibus. Alias et eligendi repellendus et aut at tempore. Aut ullam in sapiente ut expedita eius. Suscipit quis est fuga saepe perferendis.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (6, 'minima', 'Amet perferendis necessitatibus et sit eius enim distinctio. Autem aut laboriosam quidem porro eum dicta minima. Debitis aut tempore eos corrupti natus.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (7, 'quo', 'Sapiente reprehenderit fugit aut quam sed ipsa. Voluptatem ducimus vero expedita quisquam et est nesciunt. Corporis id deleniti doloremque doloribus libero ipsum ipsum. Error sed expedita nesciunt rerum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (8, 'sint', 'Impedit non laudantium dolores sint dolore animi. Maxime reprehenderit aut molestiae qui. Aut dolore reprehenderit id minima laboriosam dolor.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (9, 'est', 'Ut quo nam voluptatem eligendi et qui omnis. Consequuntur qui sed dolores sed et officiis est dolor. Labore corporis ut accusantium. Cum nesciunt inventore placeat eos libero ut accusantium.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (10, 'aspernatur', 'Non architecto quisquam fugit. Nobis neque saepe id nesciunt. Magni rem eveniet est adipisci.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (11, 'qui', 'Totam nemo vel minus at qui et sunt. Laborum dolorem alias optio praesentium. Ut sapiente qui placeat fugit harum. Ea non autem non et omnis deleniti ipsa eaque.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (12, 'iusto', 'Tempora veniam itaque molestiae. Quo labore id ut et vero. Quo ut ducimus est odit cum placeat placeat.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (13, 'ut', 'Iste sed possimus quidem dignissimos porro doloribus. Et pariatur velit aliquid maxime nostrum ullam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (14, 'vel', 'Ut molestias neque et distinctio quia quia aut. Dolorem consequatur ad et labore sit.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (15, 'placeat', 'Odio ab atque et explicabo minima fugit. Tempora accusamus recusandae error aspernatur consequatur nihil dolor quae.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (16, 'quibusdam', 'Reprehenderit ut totam debitis recusandae amet. Ad aliquid qui consequatur non. Omnis molestias ut consequatur suscipit.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (17, 'veritatis', 'Est quaerat aliquam animi. Labore qui rerum ab. Esse voluptate harum tenetur et. Vero et ea illum tempora excepturi.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (18, 'rerum', 'Laborum eum incidunt rem rerum. Delectus consectetur aut repellendus distinctio. Quia architecto ipsum est aut quod velit id. Quam ipsam pariatur quia consequuntur eligendi mollitia qui. Corporis quis aut fuga nisi et aut.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (19, 'sit', 'Ab officia porro cupiditate eos saepe fugit voluptatem. A eos dolores dolor minima. Ad id in ipsam debitis qui. Et et quam voluptas tenetur qui.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (20, 'corrupti', 'Aliquid eum aut nihil tempora quo illo. Unde possimus atque et est suscipit veniam asperiores. Minus odit culpa delectus accusamus non beatae.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (21, 'similique', 'Eos rerum commodi cum. Ea id hic voluptatem sit quo.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (22, 'et', 'Quia suscipit culpa voluptatem. Dolorem modi velit architecto deleniti expedita architecto. Rerum sit nam eligendi aperiam architecto deserunt.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (23, 'eos', 'Quis omnis ut perferendis vero. Est ut repellendus sed. Dolorem et aut et iusto sit. Quas itaque fugiat neque qui.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (24, 'voluptatem', 'Nisi sunt voluptas qui voluptates et harum molestiae. Aliquid ratione ullam enim et ducimus. Fugit sit beatae fugiat beatae.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (25, 'eum', 'Aliquam in aliquam laudantium. Quasi unde debitis quisquam ut qui dolor sapiente. Fugit qui molestiae ut sed. Iusto dolore modi quod corporis similique rerum ab cum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (26, 'quia', 'Excepturi dicta qui illum aut quisquam. Similique sit dolores officia ut ipsum aperiam velit voluptatibus. Consequatur quasi est ex id repellendus. Eos enim autem beatae inventore consectetur rerum molestiae.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (27, 'animi', 'Ipsa consequatur est nemo qui laborum qui consectetur quo. Similique in quam itaque ex. Expedita quaerat magni necessitatibus necessitatibus.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (28, 'consequatur', 'Ut in molestiae illum eveniet id quae quia. Vel et dolorem excepturi est sit molestias omnis. Quam excepturi assumenda esse explicabo.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (29, 'a', 'Saepe voluptatum vero quis placeat et. Debitis culpa sapiente qui. Nihil est distinctio aut asperiores alias.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (30, 'quidem', 'Voluptas sequi quia et quibusdam aspernatur. Consequatur quia rem earum beatae. Odio illum ullam ducimus quidem rerum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (31, 'ipsa', 'Rerum nisi ratione quo. Hic architecto vitae totam provident perspiciatis asperiores. Accusantium qui eveniet aut sit esse quis velit. Sit et quasi et nam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (32, 'deserunt', 'Sit et itaque possimus ut. Nulla sunt numquam ad enim. Illo sint laudantium corporis quibusdam eum quibusdam magnam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (33, 'illum', 'Cupiditate quisquam dignissimos id illo iste. Quo dolorem est aspernatur eos consectetur.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (34, 'cupiditate', 'Odio doloremque qui aut laborum. Ut est pariatur doloribus facilis error. Rerum molestiae fuga est suscipit explicabo fuga. Unde magni unde cupiditate exercitationem omnis minima et.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (35, 'molestias', 'Accusamus impedit quaerat numquam distinctio recusandae voluptatem fugiat ullam. Debitis nihil aperiam et voluptatem voluptatibus. Sit qui impedit corrupti explicabo.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (36, 'earum', 'Eius enim quis officia accusantium. Ratione autem ut aut impedit quo ab voluptas. Dolor libero exercitationem sed assumenda. Ullam adipisci reprehenderit cum voluptas.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (37, 'facere', 'Est nostrum aut pariatur veniam veritatis. Et error quas placeat qui aut. Ut et dolorum repellat natus culpa quos illum consequuntur.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (38, 'error', 'Voluptas aut quae qui repudiandae perspiciatis facere voluptas sit. Sunt quos aliquid cupiditate sit adipisci maxime consequuntur. Eum vitae omnis sit unde quis sed sit.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (39, 'officia', 'Et adipisci autem aut expedita. Quia repellat repellat sed ut. Repellendus magni voluptate quia porro quia consequatur animi.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (40, 'laborum', 'Numquam reiciendis consectetur voluptatibus ea voluptatem expedita aspernatur. Molestiae doloremque veritatis fuga ut quia qui. Dignissimos qui eius non voluptas reiciendis et. Inventore quasi in laudantium in quibusdam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (41, 'deleniti', 'Repudiandae sed explicabo sed. Aliquid soluta quaerat illum aut non. Officiis vero illum dignissimos animi vitae incidunt veritatis unde.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (42, 'consectetur', 'Cumque quas veritatis odit non est molestiae tempora. Dolor eos sunt mollitia vero maiores accusamus. Sunt aliquid odit corrupti accusamus sit. Qui reiciendis autem asperiores in aliquid at.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (43, 'velit', 'Et cupiditate nihil necessitatibus qui. Nobis est aut odio omnis eveniet aut. Blanditiis est quis quae. Facilis aliquid maxime aspernatur expedita quae quidem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (44, 'praesentium', 'Ex distinctio ut quos soluta. Eos voluptate quia ea omnis repudiandae voluptatem repellat error. Odio maxime accusamus illo aut. Omnis voluptatem sed perspiciatis adipisci in quo. Ut iusto alias dolor sit aspernatur sit.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (45, 'ducimus', 'Quia possimus ducimus aliquam officiis ut consectetur modi sunt. Vero et enim voluptatem omnis dolorem quos cupiditate. Voluptatem dolores vitae nisi.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (46, 'commodi', 'Sunt sit inventore dicta delectus modi. Est aut quos qui nam. Reiciendis impedit qui laborum est deleniti. Recusandae et debitis perferendis.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (47, 'unde', 'Rerum tempore architecto quis praesentium quisquam. Nemo iure ut et soluta sapiente enim.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (48, 'quas', 'Sunt ipsa labore ullam quos. Est occaecati libero officiis ipsum autem fugiat perferendis explicabo. Et nobis nihil animi quasi sit illum. Dicta amet accusantium vero.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (49, 'iste', 'Animi facilis sint et. Qui provident ut voluptate eligendi.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (50, 'blanditiis', 'Quis sed molestiae quo hic inventore. Quia ipsum ut assumenda fugiat quae omnis sint et. Qui sit occaecati qui illum minus incidunt. Odit ab velit inventore quaerat.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (51, 'laudantium', 'Ut nihil omnis quisquam et rem ut. Debitis aliquid quod dolor excepturi dolorem. Laborum voluptatem dolores maiores cum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (52, 'sed', 'Culpa vel id numquam est ut dolorem. Quia voluptatem mollitia ipsam modi. Sequi amet sequi aperiam in.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (53, 'nam', 'Quia qui ut at. Suscipit dicta eligendi sit consequatur recusandae laborum soluta impedit. Labore doloremque tenetur aut nihil beatae. Quasi et id architecto nihil delectus asperiores.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (54, 'quis', 'Accusamus vitae reprehenderit deleniti repellat. Nulla est qui perferendis unde id. Nihil temporibus non voluptate est. Ipsum aliquam tempora quisquam quo.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (55, 'dolorem', 'Atque et nisi non voluptatibus animi quos quam. Rem in aut assumenda expedita repudiandae possimus. Delectus in aspernatur ullam doloribus.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (56, 'numquam', 'Officia provident aspernatur ipsam sequi voluptatibus. Non fugit ipsa voluptas cum id optio officia. Rerum totam quis totam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (57, 'modi', 'Tempore id eaque consequatur excepturi aperiam et non. Iure et iure error. Libero quibusdam iure id ut id sint est. Veniam maxime dolores quos odit omnis quia expedita.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (58, 'ipsam', 'Tempora odit id autem quis alias adipisci officiis. Harum accusamus sint eius. Et ratione magnam expedita quaerat placeat. Dolorem consequatur libero est et.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (59, 'non', 'Ducimus dolores tempora non saepe ab fugit. Incidunt beatae nisi vero ut et. Facere voluptates dolorem nihil sunt nulla reiciendis cumque. Et repellendus qui ullam odio est.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (60, 'recusandae', 'Eum officiis nisi adipisci ad fugit. At saepe ratione sed reprehenderit voluptatibus esse. Debitis earum quia doloribus. Est dolor est voluptatem consequatur ex autem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (61, 'sunt', 'Itaque beatae itaque harum veritatis autem provident. At tenetur totam non accusamus ex itaque esse. Et placeat eligendi sunt sequi itaque. Eaque soluta et in odit asperiores voluptate ad quasi.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (62, 'mollitia', 'Consequatur iste cum unde explicabo dolores facere. Ut voluptates et autem alias sit. Nesciunt modi ducimus architecto culpa ratione voluptatem ut officiis.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (63, 'ullam', 'Et et atque in quos omnis consectetur. Et tempora consequatur consequatur modi qui veritatis. Non non fugiat fugit aut. Culpa mollitia consequatur et quis et.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (64, 'exercitationem', 'Omnis in aperiam recusandae qui asperiores porro. Sed qui ullam assumenda facilis. Quis doloribus dolores molestiae dolore ab porro nisi in. Voluptatem aut eum reiciendis et maiores tempora voluptatem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (65, 'in', 'Rerum cum explicabo fugiat aut modi et ex. Molestiae sunt saepe voluptatem voluptatem voluptatum animi. Est nam sit quis commodi quos nihil soluta sit. Vitae sit harum voluptatem repudiandae ea non ut.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (66, 'magnam', 'Aut excepturi aliquid quas. Consequatur aut delectus voluptatibus porro commodi magni. In perspiciatis numquam magni praesentium unde. Est eaque quae iusto quae.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (67, 'optio', 'Voluptatem alias qui enim exercitationem voluptas blanditiis. Maiores aliquid rerum autem cum aliquam illo voluptatibus.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (68, 'architecto', 'Nihil et repellendus et mollitia inventore porro. Nemo quo quod eos. Sequi ut ut esse saepe excepturi.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (69, 'iure', 'Rerum quidem reiciendis tempore ea porro. Itaque nostrum fuga sit odit maiores repellendus eligendi. Ad ut qui debitis ad.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (70, 'voluptatum', 'Et aut porro quo a. Possimus neque unde dolorem quia. Ut vel non architecto totam quas. Modi molestias sed et non quo.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (71, 'maiores', 'Maiores alias voluptatibus aut ut laborum corporis assumenda. Delectus voluptates veritatis nihil tempora quis soluta a. Eius ab iusto et.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (72, 'reiciendis', 'Ipsa non placeat quas reiciendis quod. Sunt iste sit cumque molestiae voluptatem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (73, 'necessitatibus', 'Unde ab nihil mollitia odio quidem quaerat. Quo amet maiores ut est sint. Accusamus asperiores omnis ut quia ipsum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (74, 'dolores', 'Laborum occaecati dicta animi modi eveniet ut. Voluptatem perspiciatis dolor reprehenderit ut quaerat eveniet consequatur sed. Optio voluptas placeat culpa quis. Natus soluta repudiandae alias voluptatem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (75, 'totam', 'Assumenda laboriosam quis quod nihil voluptas. Ut harum et qui et. Quia suscipit nihil id rerum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (76, 'ad', 'Perspiciatis autem cum fugiat assumenda odio. Aut quis excepturi aliquam placeat. Natus quasi rerum dolores autem voluptatem animi. Expedita quae et nobis et rerum dolore labore sint.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (77, 'nesciunt', 'Et illum aut molestiae voluptas eos error. Cupiditate et ipsa sequi eos. Animi ipsam consequatur ipsum amet vel voluptatem. Eum nesciunt non et rem et.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (78, 'odio', 'Ea harum velit molestiae voluptatem et. Incidunt sit quibusdam ad sint vel consequuntur facere accusantium. Molestiae aliquid sed doloremque occaecati ex quia exercitationem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (79, 'voluptas', 'Sint et rem optio ut voluptatem esse. Aliquam iste repellendus laboriosam voluptas iusto sint quia delectus. Quis id quia nesciunt est officia.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (80, 'excepturi', 'Qui quae eveniet voluptas. Quisquam qui vero enim consequatur deserunt quibusdam ut. Facere natus quo autem. Dolor omnis voluptates dolor nihil non.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (81, 'alias', 'Voluptas pariatur alias voluptate ut non expedita et. Mollitia rerum odit aut autem ducimus. Ad hic ipsum libero esse sint. Alias qui incidunt impedit ipsa voluptatibus doloremque.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (82, 'debitis', 'Voluptas culpa enim adipisci et sit nihil esse. Minus ullam aut minima. Tenetur quia unde possimus pariatur excepturi. Labore dolorem nobis similique odio eveniet occaecati iure et.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (83, 'harum', 'Exercitationem debitis maiores error repellendus. Ducimus libero soluta asperiores laborum debitis est. Voluptate earum voluptates consequatur praesentium minima. Aspernatur id sapiente reprehenderit nihil.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (84, 'natus', 'Sunt repudiandae recusandae quam laudantium placeat. Debitis omnis esse autem dolores qui eos rerum. Ut similique odio mollitia neque ullam atque itaque. Est nobis labore praesentium non non nihil dolorum.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (85, 'veniam', 'Molestias deleniti praesentium exercitationem beatae qui. Fuga accusantium dolorem exercitationem quasi deleniti. Cumque nemo dicta aut omnis. Temporibus incidunt vitae qui soluta voluptates.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (86, 'expedita', 'Aspernatur est debitis sit et corrupti. Qui vero ad ex tempora fuga molestiae. Sunt consequatur impedit ipsum quia iure. Inventore itaque perferendis ipsum nulla. Cupiditate non facilis porro qui vel neque id.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (87, 'assumenda', 'Sit assumenda omnis delectus amet ut sint quia ipsam. Rerum reiciendis pariatur reprehenderit sequi voluptas voluptatibus officia deleniti. Et quam autem sequi voluptates soluta.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (88, 'doloremque', 'Qui facilis qui suscipit sint. Et non modi corporis facilis. Molestiae quibusdam ipsam occaecati. Et voluptas id consectetur sint quod occaecati impedit.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (89, 'officiis', 'Dolores eveniet blanditiis voluptatem. Qui facilis molestias temporibus ratione. Aut aut minima culpa voluptas. Ipsam omnis quos eius autem laudantium.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (90, 'aliquam', 'Voluptatum eos et consectetur fuga. Adipisci nihil in rerum eos neque. Explicabo aut aut exercitationem. Quia qui quia nulla quibusdam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (91, 'ex', 'Suscipit excepturi magnam quaerat aliquam accusantium omnis atque blanditiis. Possimus quam ut laborum natus. Quidem et animi molestiae et. Nulla nihil fugit optio tenetur consequatur iste.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (92, 'nulla', 'Aliquam molestias voluptatem eos deleniti. Et explicabo possimus ea ipsam.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (93, 'quaerat', 'Sint ex at architecto occaecati odit. Magnam ullam consequatur et. Et qui excepturi aut ratione. Incidunt reiciendis et est dolorem.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (94, 'ea', 'Voluptatum nesciunt vitae temporibus neque. Enim repellendus sed est molestiae voluptatem nesciunt iusto. Error voluptate aut velit. Ea voluptates fuga fugit aut quibusdam distinctio est.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (95, 'saepe', 'Incidunt quaerat doloremque rerum et. Voluptatem culpa consectetur sint ut.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (96, 'occaecati', 'Minus molestiae molestias impedit repellat dolorem. Eos voluptates laboriosam quos ut. Nobis consequatur dolorum mollitia perferendis. Iste qui consequatur quo aut numquam tempore sit.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (97, 'incidunt', 'Ab ex velit molestias quidem quia enim ut temporibus. Quas qui consequatur voluptas rerum. Voluptatem nesciunt quis dignissimos sequi soluta quibusdam est.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (98, 'dolorum', 'Excepturi et eligendi ducimus soluta et. Velit aspernatur harum praesentium aut et. Fugit quia aspernatur quod eius eveniet.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (99, 'temporibus', 'At occaecati natus sunt est provident voluptas vel. Ea voluptatum ratione quidem saepe quia quam laudantium omnis. Alias sint voluptas quia id dolores voluptates quis doloribus. Nesciunt veritatis sed est debitis quidem molestias quod. Exercitationem et et sit repudiandae.');
INSERT INTO `activity` (`id`, `name`, `description`) VALUES (100, 'quod', 'Cumque quasi dolorem non assumenda. Repudiandae pariatur et error animi amet modi perspiciatis. Nesciunt sint sequi eum voluptatem aperiam ullam dignissimos. Voluptas voluptatem adipisci magni harum eveniet.');


#
# TABLE STRUCTURE FOR: comment
#

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_time` date DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `post` (`post`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (1, '2014-09-10', 74, 21);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (2, '2018-05-21', 67, 9);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (3, '1978-12-17', 22, 72);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (4, '1980-02-18', 75, 79);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (5, '1970-08-31', 9, 31);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (6, '1979-10-23', 14, 22);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (7, '1991-08-29', 46, 63);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (8, '2011-03-02', 18, 85);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (9, '2006-05-13', 97, 13);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (10, '2015-11-03', 100, 65);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (11, '1982-12-16', 27, 98);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (12, '2014-12-25', 97, 77);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (13, '1974-09-30', 50, 53);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (14, '1988-12-13', 46, 10);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (15, '2017-10-17', 65, 40);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (16, '2017-05-14', 96, 39);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (17, '2014-08-13', 61, 62);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (18, '1994-08-25', 48, 82);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (19, '1998-10-31', 34, 22);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (20, '2006-04-29', 60, 42);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (21, '2010-05-18', 53, 74);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (22, '1973-10-16', 64, 98);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (23, '1995-12-30', 36, 81);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (24, '1987-03-27', 83, 33);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (25, '1976-03-26', 94, 82);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (26, '1988-02-27', 97, 21);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (27, '1989-03-10', 79, 94);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (28, '1976-07-12', 98, 28);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (29, '2009-04-05', 46, 43);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (30, '1981-04-30', 38, 11);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (31, '2004-03-13', 82, 33);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (32, '1997-12-30', 50, 42);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (33, '2008-02-11', 95, 97);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (34, '2002-03-06', 24, 28);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (35, '2016-11-06', 18, 84);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (36, '1999-08-25', 70, 70);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (37, '1979-11-19', 57, 33);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (38, '1973-03-09', 68, 93);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (39, '1972-01-29', 14, 50);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (40, '2010-08-09', 25, 8);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (41, '2015-09-24', 31, 22);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (42, '1980-06-05', 28, 10);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (43, '1998-07-22', 15, 25);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (44, '2021-12-18', 38, 61);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (45, '2000-08-13', 67, 76);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (46, '2004-01-20', 71, 49);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (47, '2000-12-11', 8, 21);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (48, '1971-01-20', 91, 3);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (49, '1974-03-26', 17, 14);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (50, '1990-05-01', 30, 35);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (51, '1977-04-13', 98, 99);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (52, '1992-09-03', 5, 55);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (53, '1978-10-08', 32, 72);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (54, '1996-02-21', 47, 45);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (55, '2017-09-04', 21, 71);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (56, '2003-08-26', 52, 52);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (57, '2017-12-13', 92, 80);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (58, '1970-09-02', 62, 7);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (59, '2003-06-19', 5, 99);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (60, '1977-12-28', 67, 71);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (61, '1989-08-05', 75, 38);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (62, '2002-04-01', 20, 83);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (63, '2020-09-11', 58, 10);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (64, '1978-12-13', 85, 75);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (65, '1982-02-03', 24, 14);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (66, '2001-09-29', 9, 21);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (67, '2007-09-10', 13, 14);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (68, '1991-11-21', 75, 44);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (69, '2004-01-17', 85, 21);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (70, '2003-09-15', 89, 5);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (71, '1977-05-20', 92, 41);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (72, '2018-06-15', 57, 84);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (73, '2007-06-19', 20, 18);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (74, '1974-03-04', 91, 24);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (75, '2020-04-09', 17, 57);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (76, '1997-03-31', 95, 91);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (77, '2001-05-25', 95, 14);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (78, '1982-03-04', 73, 53);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (79, '1988-10-06', 23, 58);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (80, '1975-04-06', 27, 47);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (81, '1972-02-10', 71, 36);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (82, '1998-09-05', 68, 84);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (83, '2012-10-28', 49, 42);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (84, '2002-07-13', 27, 33);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (85, '1978-01-30', 63, 15);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (86, '1997-02-15', 38, 55);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (87, '2003-03-20', 56, 94);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (88, '1997-10-09', 38, 75);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (89, '1977-06-08', 12, 29);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (90, '1976-02-22', 98, 28);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (91, '2005-01-02', 85, 93);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (92, '1997-10-22', 18, 80);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (93, '1984-08-29', 6, 91);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (94, '2018-11-27', 32, 29);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (95, '2022-01-28', 48, 59);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (96, '1981-02-10', 75, 19);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (97, '2004-01-12', 95, 43);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (98, '1973-07-14', 2, 43);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (99, '1977-03-31', 84, 29);
INSERT INTO `comment` (`id`, `creation_time`, `creator`, `post`) VALUES (100, '2016-06-07', 76, 47);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_first` int(11) DEFAULT NULL,
  `user_second` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_first` (`user_first`),
  KEY `user_second` (`user_second`),
  CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user_first`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`user_second`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (1, 56, 80);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (2, 89, 16);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (3, 12, 56);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (4, 76, 29);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (5, 77, 98);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (6, 17, 38);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (7, 92, 7);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (8, 54, 74);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (9, 4, 19);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (10, 79, 42);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (11, 79, 69);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (12, 37, 59);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (13, 90, 17);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (14, 78, 30);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (15, 11, 77);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (16, 62, 66);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (17, 57, 50);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (18, 82, 68);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (19, 5, 57);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (20, 97, 82);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (21, 54, 14);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (22, 19, 46);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (23, 20, 73);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (24, 19, 24);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (25, 92, 98);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (26, 66, 70);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (27, 66, 2);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (28, 29, 56);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (29, 19, 6);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (30, 86, 29);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (31, 82, 47);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (32, 95, 38);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (33, 96, 76);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (34, 6, 1);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (35, 32, 2);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (36, 82, 86);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (37, 15, 1);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (38, 31, 35);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (39, 73, 50);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (40, 59, 65);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (41, 48, 24);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (42, 34, 14);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (43, 26, 62);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (44, 69, 44);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (45, 68, 54);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (46, 73, 49);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (47, 1, 67);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (48, 87, 97);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (49, 42, 92);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (50, 97, 74);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (51, 94, 79);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (52, 60, 8);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (53, 80, 91);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (54, 43, 52);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (55, 41, 1);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (56, 16, 88);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (57, 24, 50);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (58, 1, 49);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (59, 12, 70);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (60, 93, 79);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (61, 24, 65);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (62, 28, 24);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (63, 32, 14);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (64, 20, 74);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (65, 6, 16);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (66, 48, 100);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (67, 95, 8);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (68, 7, 74);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (69, 98, 49);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (70, 26, 38);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (71, 50, 42);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (72, 26, 73);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (73, 91, 27);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (74, 22, 3);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (75, 97, 15);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (76, 81, 20);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (77, 80, 8);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (78, 43, 12);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (79, 22, 62);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (80, 85, 28);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (81, 78, 33);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (82, 27, 73);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (83, 40, 34);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (84, 47, 37);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (85, 83, 72);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (86, 75, 32);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (87, 14, 1);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (88, 5, 5);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (89, 27, 27);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (90, 7, 24);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (91, 41, 87);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (92, 43, 21);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (93, 95, 85);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (94, 32, 17);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (95, 47, 17);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (96, 45, 25);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (97, 49, 71);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (98, 98, 88);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (99, 5, 44);
INSERT INTO `friendship` (`id`, `user_first`, `user_second`) VALUES (100, 25, 87);


#
# TABLE STRUCTURE FOR: participation
#

DROP TABLE IF EXISTS `participation`;

CREATE TABLE `participation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `activity` (`activity`),
  CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participation_ibfk_2` FOREIGN KEY (`activity`) REFERENCES `activity` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (601, 3, 'optio');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (602, 84, 'beatae');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (603, 37, 'dolor');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (604, 57, 'aliquam');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (605, 99, 'voluptatem');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (606, 92, 'et');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (607, 23, 'consectetur');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (608, 1, 'molestiae');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (609, 81, 'incidunt');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (610, 73, 'iusto');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (611, 2, 'numquam');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (612, 29, 'laborum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (613, 81, 'est');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (614, 25, 'voluptas');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (615, 70, 'assumenda');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (616, 81, 'qui');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (617, 75, 'odio');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (618, 82, 'blanditiis');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (619, 84, 'harum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (620, 15, 'rerum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (621, 37, 'architecto');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (622, 13, 'non');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (623, 19, 'consectetur');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (624, 12, 'voluptatem');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (625, 53, 'similique');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (626, 44, 'mollitia');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (627, 47, 'qui');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (628, 1, 'eos');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (629, 2, 'ea');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (630, 26, 'quas');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (631, 33, 'architecto');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (632, 45, 'assumenda');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (633, 69, 'ea');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (634, 19, 'molestiae');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (635, 64, 'ex');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (636, 34, 'a');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (637, 39, 'iusto');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (638, 60, 'necessitatibus');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (639, 58, 'quas');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (640, 56, 'beatae');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (641, 57, 'voluptatum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (642, 65, 'alias');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (643, 72, 'officiis');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (644, 30, 'quia');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (645, 91, 'mollitia');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (646, 46, 'dolores');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (647, 61, 'totam');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (648, 31, 'est');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (649, 16, 'magnam');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (650, 82, 'recusandae');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (651, 82, 'corrupti');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (652, 80, 'dolorem');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (653, 60, 'in');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (654, 78, 'deleniti');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (655, 12, 'ex');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (656, 27, 'optio');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (657, 33, 'unde');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (658, 70, 'animi');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (659, 57, 'voluptatum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (660, 79, 'laborum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (661, 55, 'dolorum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (662, 70, 'cupiditate');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (663, 13, 'voluptatum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (664, 45, 'eos');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (665, 48, 'ea');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (666, 8, 'error');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (667, 41, 'sit');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (668, 49, 'voluptatum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (669, 27, 'ea');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (670, 18, 'harum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (671, 59, 'iste');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (672, 5, 'unde');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (673, 35, 'quibusdam');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (674, 96, 'unde');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (675, 75, 'quia');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (676, 38, 'est');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (677, 98, 'aspernatur');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (678, 45, 'beatae');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (679, 6, 'temporibus');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (680, 38, 'molestias');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (681, 15, 'iure');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (682, 83, 'mollitia');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (683, 32, 'eum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (684, 55, 'necessitatibus');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (685, 58, 'quas');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (686, 96, 'cupiditate');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (687, 16, 'a');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (688, 8, 'minima');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (689, 76, 'alias');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (690, 42, 'maiores');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (691, 77, 'quod');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (692, 80, 'quia');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (693, 85, 'dolorum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (694, 84, 'ullam');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (695, 13, 'doloremque');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (696, 45, 'earum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (697, 66, 'earum');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (698, 81, 'voluptas');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (699, 58, 'exercitationem');
INSERT INTO `participation` (`id`, `user`, `activity`) VALUES (700, 56, 'corrupti');


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `creation_time` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity` (`activity`),
  KEY `creator` (`creator`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (1, 1, 1, '1974-11-17');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (2, 2, 2, '1989-03-22');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (3, 3, 3, '2004-02-04');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (4, 4, 4, '1977-12-09');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (5, 5, 5, '2011-04-20');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (6, 6, 6, '2013-05-06');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (7, 7, 7, '1978-07-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (8, 8, 8, '2018-11-15');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (9, 9, 9, '2001-10-26');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (10, 10, 10, '2013-07-23');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (11, 11, 11, '1977-12-26');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (12, 12, 12, '1978-03-27');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (13, 13, 13, '2018-12-26');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (14, 14, 14, '1977-10-18');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (15, 15, 15, '1977-04-23');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (16, 16, 16, '2015-05-12');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (17, 17, 17, '2021-08-29');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (18, 18, 18, '1990-09-22');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (19, 19, 19, '1992-12-16');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (20, 20, 20, '2009-12-28');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (21, 21, 21, '1989-05-31');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (22, 22, 22, '1989-06-21');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (23, 23, 23, '1985-12-11');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (24, 24, 24, '2013-12-28');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (25, 25, 25, '1998-03-29');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (26, 26, 26, '2018-10-02');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (27, 27, 27, '1990-10-10');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (28, 28, 28, '1988-08-09');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (29, 29, 29, '1996-03-21');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (30, 30, 30, '1990-11-22');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (31, 31, 31, '1973-09-11');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (32, 32, 32, '1992-05-06');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (33, 33, 33, '1993-08-20');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (34, 34, 34, '1998-03-23');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (35, 35, 35, '1989-08-20');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (36, 36, 36, '1983-06-30');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (37, 37, 37, '1982-02-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (38, 38, 38, '1981-03-08');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (39, 39, 39, '2001-10-07');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (40, 40, 40, '1976-05-26');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (41, 41, 41, '2002-05-08');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (42, 42, 42, '1988-08-25');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (43, 43, 43, '1985-04-20');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (44, 44, 44, '2006-02-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (45, 45, 45, '1990-03-12');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (46, 46, 46, '2019-07-22');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (47, 47, 47, '1998-01-18');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (48, 48, 48, '2010-04-02');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (49, 49, 49, '2001-10-21');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (50, 50, 50, '2015-03-30');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (51, 51, 51, '1972-03-05');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (52, 52, 52, '1977-09-22');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (53, 53, 53, '2010-11-19');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (54, 54, 54, '2014-08-29');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (55, 55, 55, '1979-02-21');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (56, 56, 56, '1997-06-07');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (57, 57, 57, '1981-10-07');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (58, 58, 58, '2004-11-10');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (59, 59, 59, '2008-10-17');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (60, 60, 60, '2006-05-17');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (61, 61, 61, '1988-08-02');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (62, 62, 62, '1983-02-13');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (63, 63, 63, '2013-05-21');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (64, 64, 64, '1971-10-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (65, 65, 65, '2003-05-29');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (66, 66, 66, '1970-10-14');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (67, 67, 67, '1980-02-02');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (68, 68, 68, '1971-11-29');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (69, 69, 69, '1994-06-19');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (70, 70, 70, '2005-10-14');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (71, 71, 71, '1981-02-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (72, 72, 72, '1975-06-01');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (73, 73, 73, '2003-11-30');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (74, 74, 74, '1976-03-24');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (75, 75, 75, '2004-08-31');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (76, 76, 76, '1976-11-12');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (77, 77, 77, '2000-02-23');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (78, 78, 78, '2006-03-19');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (79, 79, 79, '1975-10-26');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (80, 80, 80, '2007-01-28');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (81, 81, 81, '2014-01-29');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (82, 82, 82, '1988-06-10');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (83, 83, 83, '1980-07-10');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (84, 84, 84, '1998-05-12');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (85, 85, 85, '1998-05-15');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (86, 86, 86, '1974-04-01');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (87, 87, 87, '1980-10-12');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (88, 88, 88, '1996-03-01');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (89, 89, 89, '2010-04-13');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (90, 90, 90, '1993-04-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (91, 91, 91, '1986-01-01');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (92, 92, 92, '1986-01-21');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (93, 93, 93, '2004-01-17');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (94, 94, 94, '2005-11-03');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (95, 95, 95, '2004-09-22');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (96, 96, 96, '1997-09-19');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (97, 97, 97, '2018-11-23');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (98, 98, 98, '1972-09-11');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (99, 99, 99, '2000-11-30');
INSERT INTO `post` (`id`, `activity`, `creator`, `creation_time`) VALUES (100, 100, 100, '1986-02-21');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`id`, `name`) VALUES (1, 'Mrs. Nova O\'Connell');
INSERT INTO `user` (`id`, `name`) VALUES (2, 'Wendell Dooley');
INSERT INTO `user` (`id`, `name`) VALUES (3, 'Matilde Hettinger');
INSERT INTO `user` (`id`, `name`) VALUES (4, 'Joe Harvey');
INSERT INTO `user` (`id`, `name`) VALUES (5, 'Briana Price');
INSERT INTO `user` (`id`, `name`) VALUES (6, 'Noemi Murphy DVM');
INSERT INTO `user` (`id`, `name`) VALUES (7, 'Shanel Bahringer III');
INSERT INTO `user` (`id`, `name`) VALUES (8, 'Trisha McLaughlin Sr.');
INSERT INTO `user` (`id`, `name`) VALUES (9, 'Arnulfo Cronin');
INSERT INTO `user` (`id`, `name`) VALUES (10, 'Chyna Mertz');
INSERT INTO `user` (`id`, `name`) VALUES (11, 'Alanna Pfeffer');
INSERT INTO `user` (`id`, `name`) VALUES (12, 'Moriah McKenzie');
INSERT INTO `user` (`id`, `name`) VALUES (13, 'Vanessa Grant');
INSERT INTO `user` (`id`, `name`) VALUES (14, 'Pearline Ryan IV');
INSERT INTO `user` (`id`, `name`) VALUES (15, 'Dr. Joyce Armstrong DVM');
INSERT INTO `user` (`id`, `name`) VALUES (16, 'Royal Haley');
INSERT INTO `user` (`id`, `name`) VALUES (17, 'Ramon Gottlieb');
INSERT INTO `user` (`id`, `name`) VALUES (18, 'Graciela Wiegand');
INSERT INTO `user` (`id`, `name`) VALUES (19, 'Alexandrine Will');
INSERT INTO `user` (`id`, `name`) VALUES (20, 'Joanne Emard');
INSERT INTO `user` (`id`, `name`) VALUES (21, 'Miss Dulce Rippin PhD');
INSERT INTO `user` (`id`, `name`) VALUES (22, 'Mariah Wintheiser V');
INSERT INTO `user` (`id`, `name`) VALUES (23, 'Mr. Marcelo Stracke V');
INSERT INTO `user` (`id`, `name`) VALUES (24, 'Wilton Rippin Sr.');
INSERT INTO `user` (`id`, `name`) VALUES (25, 'Dr. Julio Russel');
INSERT INTO `user` (`id`, `name`) VALUES (26, 'Prof. Clementina Padberg');
INSERT INTO `user` (`id`, `name`) VALUES (27, 'Ernestina Marks');
INSERT INTO `user` (`id`, `name`) VALUES (28, 'Dr. Dessie Marvin Jr.');
INSERT INTO `user` (`id`, `name`) VALUES (29, 'Reinhold Kuhic');
INSERT INTO `user` (`id`, `name`) VALUES (30, 'Roman Smitham');
INSERT INTO `user` (`id`, `name`) VALUES (31, 'Modesto Schmitt');
INSERT INTO `user` (`id`, `name`) VALUES (32, 'Ignacio Bartell');
INSERT INTO `user` (`id`, `name`) VALUES (33, 'Mr. Armando Senger');
INSERT INTO `user` (`id`, `name`) VALUES (34, 'Alisha Maggio');
INSERT INTO `user` (`id`, `name`) VALUES (35, 'Prof. Dewitt Breitenberg');
INSERT INTO `user` (`id`, `name`) VALUES (36, 'Milo Spencer');
INSERT INTO `user` (`id`, `name`) VALUES (37, 'Mr. Hayden Abbott');
INSERT INTO `user` (`id`, `name`) VALUES (38, 'Dr. Veda Hamill');
INSERT INTO `user` (`id`, `name`) VALUES (39, 'Griffin Powlowski');
INSERT INTO `user` (`id`, `name`) VALUES (40, 'Dr. Jaylon Hand DDS');
INSERT INTO `user` (`id`, `name`) VALUES (41, 'Roma Boehm');
INSERT INTO `user` (`id`, `name`) VALUES (42, 'Allie Dickens Sr.');
INSERT INTO `user` (`id`, `name`) VALUES (43, 'Vernon Barrows');
INSERT INTO `user` (`id`, `name`) VALUES (44, 'Kaycee O\'Keefe');
INSERT INTO `user` (`id`, `name`) VALUES (45, 'Pierre Romaguera');
INSERT INTO `user` (`id`, `name`) VALUES (46, 'Miss Estell Metz');
INSERT INTO `user` (`id`, `name`) VALUES (47, 'Breana Walker');
INSERT INTO `user` (`id`, `name`) VALUES (48, 'Gay Smitham');
INSERT INTO `user` (`id`, `name`) VALUES (49, 'Pietro Anderson DVM');
INSERT INTO `user` (`id`, `name`) VALUES (50, 'Imogene Grant');
INSERT INTO `user` (`id`, `name`) VALUES (51, 'Jane Schulist');
INSERT INTO `user` (`id`, `name`) VALUES (52, 'Cristopher Watsica');
INSERT INTO `user` (`id`, `name`) VALUES (53, 'Dax Bogan');
INSERT INTO `user` (`id`, `name`) VALUES (54, 'Jennifer Heathcote');
INSERT INTO `user` (`id`, `name`) VALUES (55, 'Morgan Zboncak');
INSERT INTO `user` (`id`, `name`) VALUES (56, 'Elnora Weimann III');
INSERT INTO `user` (`id`, `name`) VALUES (57, 'Mr. Delaney Stokes');
INSERT INTO `user` (`id`, `name`) VALUES (58, 'Lee Barrows');
INSERT INTO `user` (`id`, `name`) VALUES (59, 'Vilma Rosenbaum');
INSERT INTO `user` (`id`, `name`) VALUES (60, 'Dr. Nash Schoen');
INSERT INTO `user` (`id`, `name`) VALUES (61, 'Rocky Watsica');
INSERT INTO `user` (`id`, `name`) VALUES (62, 'Mr. Devyn Hilll');
INSERT INTO `user` (`id`, `name`) VALUES (63, 'Kraig Langworth');
INSERT INTO `user` (`id`, `name`) VALUES (64, 'Mrs. Rosetta Fahey');
INSERT INTO `user` (`id`, `name`) VALUES (65, 'Ms. Marquise Leuschke DDS');
INSERT INTO `user` (`id`, `name`) VALUES (66, 'Garett Graham');
INSERT INTO `user` (`id`, `name`) VALUES (67, 'Ms. Antonietta Cruickshank I');
INSERT INTO `user` (`id`, `name`) VALUES (68, 'Toy Wintheiser');
INSERT INTO `user` (`id`, `name`) VALUES (69, 'Carolina Vandervort');
INSERT INTO `user` (`id`, `name`) VALUES (70, 'Gideon Runolfsson');
INSERT INTO `user` (`id`, `name`) VALUES (71, 'Vernon O\'Kon');
INSERT INTO `user` (`id`, `name`) VALUES (72, 'Emelia Altenwerth DDS');
INSERT INTO `user` (`id`, `name`) VALUES (73, 'Angeline Spencer');
INSERT INTO `user` (`id`, `name`) VALUES (74, 'Cathryn Kreiger');
INSERT INTO `user` (`id`, `name`) VALUES (75, 'Bernadette Flatley I');
INSERT INTO `user` (`id`, `name`) VALUES (76, 'Zena Tremblay PhD');
INSERT INTO `user` (`id`, `name`) VALUES (77, 'Miss Veda Koepp');
INSERT INTO `user` (`id`, `name`) VALUES (78, 'Lafayette Lakin DVM');
INSERT INTO `user` (`id`, `name`) VALUES (79, 'Khalil Weber');
INSERT INTO `user` (`id`, `name`) VALUES (80, 'Cynthia Roob');
INSERT INTO `user` (`id`, `name`) VALUES (81, 'Cheyanne Hodkiewicz');
INSERT INTO `user` (`id`, `name`) VALUES (82, 'Dr. Jacques Beier MD');
INSERT INTO `user` (`id`, `name`) VALUES (83, 'Georgette Turner');
INSERT INTO `user` (`id`, `name`) VALUES (84, 'Shad Davis');
INSERT INTO `user` (`id`, `name`) VALUES (85, 'Prof. Amir Bartoletti V');
INSERT INTO `user` (`id`, `name`) VALUES (86, 'Holden Daniel');
INSERT INTO `user` (`id`, `name`) VALUES (87, 'Kevin Hand');
INSERT INTO `user` (`id`, `name`) VALUES (88, 'Lester Heidenreich');
INSERT INTO `user` (`id`, `name`) VALUES (89, 'Madisen Mayert');
INSERT INTO `user` (`id`, `name`) VALUES (90, 'Dr. Carlotta Lang');
INSERT INTO `user` (`id`, `name`) VALUES (91, 'Jammie Runte');
INSERT INTO `user` (`id`, `name`) VALUES (92, 'Magdalen Emard');
INSERT INTO `user` (`id`, `name`) VALUES (93, 'Crystal Torp');
INSERT INTO `user` (`id`, `name`) VALUES (94, 'Dr. Susie Kub I');
INSERT INTO `user` (`id`, `name`) VALUES (95, 'Ryleigh Veum');
INSERT INTO `user` (`id`, `name`) VALUES (96, 'Prof. Mack Aufderhar Sr.');
INSERT INTO `user` (`id`, `name`) VALUES (97, 'Lamar Langworth DDS');
INSERT INTO `user` (`id`, `name`) VALUES (98, 'Sasha Turcotte MD');
INSERT INTO `user` (`id`, `name`) VALUES (99, 'Micah Greenholt');
INSERT INTO `user` (`id`, `name`) VALUES (100, 'Lavada Schaden');


