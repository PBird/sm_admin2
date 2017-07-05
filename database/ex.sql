-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 06, 2017 at 12:09 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ex`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_05_073400_create_pages-table', 1),
(4, '2017_07_05_183452_create_navigations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `name`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'FOOD DELIVERY', '#features', '2017-07-05 21:00:00', '2017-07-05 21:00:00'),
(2, 'HOW IT WORKS', '#works', '2017-07-05 21:00:00', '2017-07-05 21:00:00'),
(3, 'OUR CITIES', '#cities', '2017-07-05 21:00:00', '2017-07-05 21:00:00'),
(4, 'SIGN UP', '#plans', '2017-07-05 21:00:00', '2017-07-05 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `tag_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'food deliver', '<section class=\"section-features js--section-features clearfix\" id=\"features\">\r\n            <div class=\"row clearfix\">\r\n\r\n                <h2> Get food fast &mdash; not fast food. </h2>\r\n                <p class=\"long-copy\">\r\n\r\n                    Hello, we’re Omnifood, your new premium food delivery service. We know you’re always busy. No time for cooking. So let us take care of that, we’re really good at it, we promise!\r\n                </p>\r\n\r\n            </div>\r\n\r\n\r\n\r\n            <div class=\"row clearfix\">\r\n\r\n                  <div class=\"col span_1_of_4 box\">\r\n\r\n                                 <i class=\"ion-ios-infinite-outline icon-big\"></i>\r\n                                <h3> Up to 365 days/year </h3>\r\n\r\n\r\n                                <p>\r\n                                     Never cook again! We really mean that. Our subscription plans include up to 365 days/year coverage. You can also choose to order more flexibly if that\'s your style.\r\n                                </p>\r\n\r\n                 </div>\r\n\r\n                <div class=\"col span_1_of_4 box\">\r\n\r\n                                <i class=\"ion-ios-stopwatch-outline icon-big\">  </i>\r\n                                <h3> Ready in 20 minutes </h3>\r\n\r\n                                <p>\r\n                                     You\'re only twenty minutes away from your delicious and super healthy meals delivered right to your home. We work with the best chefs in each town to ensure that you\'re 100% happy.\r\n                                </p>\r\n\r\n                </div>\r\n\r\n                 <div class=\"col span_1_of_4 box\">\r\n\r\n                                <i class=\"ion-ios-nutrition-outline icon-big\"></i>\r\n                                <h3> 100% organic </h3>\r\n\r\n                                <p>\r\n                                    All our vegetables are fresh, organic and local. Animals are raised without added hormones or antibiotics. Good for your health, the environment, and it also tastes better!\r\n                                </p>\r\n\r\n                </div>\r\n\r\n                <div class=\"col span_1_of_4 box\">\r\n\r\n                                 <i class=\"ion-ios-cart-outline icon-big\">  </i>\r\n                                <h3> Order anything </h3>\r\n\r\n                                <p>\r\n                                     We don\'t limit your creativity, which means you can order whatever you feel like. You can also choose from our menu containing over 100 delicious meals. It\'s up to you!\r\n                                </p>\r\n\r\n                 </div>\r\n\r\n            </div>\r\n\r\n        </section>', 1, 1, NULL, NULL),
(2, 'meals', '\r\n        <section class=\"section-meals\">\r\n\r\n             <ul class=\"meals-showcase\">\r\n\r\n                <li>\r\n                    <figure class=\"meal-photo\">\r\n                        <img src=\"site/resources/img/1.jpg\" alt=\"Korean bibimbap with egg and vegetables\" >\r\n                    </figure>\r\n                </li>\r\n\r\n                <li>\r\n                    <figure class=\"meal-photo\">\r\n                        <img src=\"site/resources/img/2.jpg\" alt=\"Simple italian pizza with cherry tomatoes\" >\r\n                    </figure>\r\n                </li>\r\n\r\n                <li>\r\n                    <figure class=\"meal-photo\">\r\n                        <img src=\"site/resources/img/3.jpg\" alt=\"Chicken breast steak with vegetables\" >\r\n                    </figure>\r\n                </li>\r\n\r\n                <li>\r\n                    <figure class=\"meal-photo\">\r\n                        <img src=\"site/resources/img/4.jpg\" alt=\"Autumn pumpkin soup\" >\r\n                    </figure>\r\n                </li>\r\n\r\n           </ul>\r\n\r\n\r\n           <ul class=\"meals-showcase clearfix\">\r\n\r\n                  <li>\r\n                    <figure class=\"meal-photo\">\r\n\r\n                        <img src=\"site/resources/img/5.jpg\"  alt=\"Paleo beef steak with vegetables\" >\r\n\r\n                    </figure>\r\n\r\n                  </li>\r\n\r\n                  <li>\r\n\r\n                        <figure class=\"meal-photo\">\r\n\r\n                            <img src=\"site/resources/img/6.jpg\" alt=\"Healthy baguette with egg and vegetables\" >\r\n\r\n                        </figure>\r\n\r\n                   </li>\r\n\r\n                   <li>\r\n                        <figure class=\"meal-photo\">\r\n\r\n                            <img src=\"site/resources/img/7.jpg\" alt=\"Burger with cheddar and bacon\" >\r\n\r\n                        </figure>\r\n\r\n                   </li>\r\n\r\n                   <li>\r\n\r\n                        <figure class=\"meal-photo\">\r\n\r\n                            <img src=\"site/resources/img/8.jpg\" alt=\"Granola with cherries and strawberries\" >\r\n\r\n                        </figure>\r\n\r\n                    </li>\r\n\r\n            </ul>\r\n\r\n\r\n\r\n\r\n\r\n        </section>', NULL, 1, NULL, NULL),
(3, 'how it works', ' <section class=\"section-steps \" id=\"works\">\r\n\r\n            <div class=\"row \">\r\n\r\n                <h2> How it works &mdash; Simple as 1, 2, 3 </h2>\r\n\r\n\r\n            </div>\r\n            <div class=\"row clearfix\">\r\n\r\n                <div class=\"col span_1_of_2 steps-box\">\r\n\r\n\r\n                    <img src=\"site/resources/img/app-iPhone.png\" alt=\"Omnifood app on iphone \" class=\"app-screen\">\r\n\r\n\r\n                </div>\r\n\r\n                <div class=\"col span_1_of_2 steps-box\">\r\n\r\n                    <div class=\"works-step\">\r\n                        <div>1</div>\r\n\r\n                        <p>Choose the subscription plan that best fits your needs and sign up today.</p>\r\n\r\n\r\n                    </div>\r\n\r\n                     <div class=\"works-step\">\r\n                        <div>2</div>\r\n\r\n                        <p>Order your delicious meal using our mobile app or website. Or you can even call us!</p>\r\n\r\n\r\n                    </div>\r\n\r\n                     <div class=\"works-step\">\r\n                       <div>3</div>\r\n\r\n                        <p>Enjoy your meal after less than 20 minutes. See you the next time!</p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <a href=\"#\" class=\"btn-app\"> <img src=\"resources/img/download-app.svg\" alt=\"App Store Button\">  </a>\r\n                    <a href=\"#\" class=\"btn-app\"> <img src=\"resources/img/download-app-android.png\" alt=\"App Store Button\">  </a>\r\n\r\n                </div>\r\n\r\n\r\n            </div>\r\n\r\n\r\n        </section>', 2, 1, NULL, NULL),
(4, 'our cities', '<section class=\"section-cities clearfix\" id=\"cities\">\r\n\r\n             <div class=\"row\">\r\n\r\n                    <h2>We\'re currently in these cities </h2>\r\n\r\n             </div>\r\n            <div class=\"row clearfix\">\r\n                    <div class=\"col span_1_of_4 box\">\r\n\r\n                        <img src=\"site/resources/img/lisbon-3.jpg\">\r\n\r\n                        <h3> Lisbon </h3>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-person icon-small \"></i> 1600+ happy eaters\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-star icon-small\"></i> 60+ top chefs\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-social-twitter icon-small\"></i> <a href=\"#\"> @omnifood_lx </a>\r\n                        </div>\r\n\r\n\r\n                    </div>\r\n\r\n\r\n                     <div class=\"col span_1_of_4 box\">\r\n\r\n                        <img src=\"site/resources/img/san-francisco.jpg\">\r\n\r\n                        <h3> San Francisco </h3>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-person icon-small\" ></i> 3700+ happy eaters\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-star icon-small\"></i> 160+ top chefs\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-social-twitter icon-small\"></i> <a href=\"#\"> @omnifood_sf </a>\r\n                        </div>\r\n\r\n\r\n                    </div>\r\n\r\n                   <div class=\"col span_1_of_4 box\">\r\n\r\n                        <img src=\"site/resources/img/berlin.jpg\">\r\n\r\n                        <h3> Berlin </h3>\r\n\r\n                        <div class=\"city-feature \">\r\n                             <i class=\"ion-ios-person icon-small\"></i> 2300+ happy eaters\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-star icon-small\"></i> 110+ top chefs\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-social-twitter icon-small\"></i><a href=\"#\">  @omnifood_berlin</a>\r\n                        </div>\r\n\r\n\r\n                    </div>\r\n\r\n                    <div class=\"col span_1_of_4 box\">\r\n\r\n                        <img src=\"site/resources/img/london.jpg\">\r\n\r\n                        <h3> London </h3>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-person icon-small\"></i> 1200+ happy eaters\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-ios-star icon-small\"></i> 50+ top chefs\r\n                        </div>\r\n\r\n                        <div class=\"city-feature\">\r\n                             <i class=\"ion-social-twitter icon-small\"></i> <a href=\"#\">  @omnifood_london </a>\r\n                        </div>\r\n\r\n\r\n                     </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n             </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n </section>', 3, 1, NULL, NULL),
(5, 'testimonials', '<section class=\"section-testimonials clearfix\">\r\n\r\n\r\n            <div class=\"row\">\r\n\r\n                <h2> Our customers can\'t live without us </h2>\r\n\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n\r\n                    <div class=\"col span_1_of_3\">\r\n\r\n                        <blockquote>\r\n\r\n                        Omnifood is just awesome! I just launched a startup which leaves me with no time for cooking, so Omnifood is a life-saver. Now that I got used to it, I couldn\'t live without my daily meals!\r\n                        <cite> <img src=\"resources/img/customer-1.jpg\"> Alberto Duncan </cite>\r\n                        </blockquote>\r\n\r\n\r\n                    </div>\r\n\r\n\r\n                    <div class=\"col span_1_of_3\">\r\n\r\n                        <blockquote>\r\n\r\n                       Inexpensive, healthy and great-tasting meals, delivered right to my home. We have lots of food delivery here in Lisbon, but no one comes even close to Omifood. Me and my family are so in love!\r\n                        <cite> <img src=\"resources/img/customer-2.jpg\"> Joana Silva </cite>\r\n                        </blockquote>\r\n\r\n\r\n                    </div>\r\n\r\n                    <div class=\"col span_1_of_3\">\r\n\r\n                        <blockquote>\r\n\r\n                        I was looking for a quick and easy food delivery service in San Franciso. I tried a lot of them and ended up with Omnifood. Best food delivery service in the Bay Area. Keep up the great work!\r\n                        <cite> <img src=\"resources/img/customer-3.jpg\"> Milton Chapman </cite>\r\n                        </blockquote>\r\n\r\n\r\n                    </div>\r\n\r\n            </div>\r\n\r\n        </section>', NULL, 1, NULL, NULL),
(6, 'sign ', '\r\n        <section class=\"section-plans js--section-plans clearfix\" id=\"plans\">\r\n\r\n        <div class=\"row\">\r\n\r\n            <h2> Start eating healthy today </h2>\r\n\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col span_1_of_3\">\r\n                    <div class=\"plan-box\">\r\n                        <div>\r\n                            <h3>  Premium </h3>\r\n                            <p class=\"plan-price\"> $399 <span> / month </span>  </p>\r\n                            <p class=\"plan-price-meal\"> That’s only 13.30$ per meal </p>\r\n                        </div>\r\n                        <div>\r\n                            <ul>\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> 1 meal every day </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Order 24/7 </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Access to newest creations </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Free delivery </li>\r\n\r\n                            </ul>\r\n                        </div>\r\n\r\n                        <div>\r\n\r\n                            <a href=\"#\" class=\"btn btn-full\"> Sign up now </a>\r\n                     </div>\r\n\r\n                    </div>\r\n                </div>\r\n\r\n                 <div class=\"col span_1_of_3\">\r\n                    <div class=\"plan-box\">\r\n                        <div>\r\n                            <h3>  Pro </h3>\r\n                            <p class=\"plan-price\"> $149 <span> / month </span> </p>\r\n                            <p class=\"plan-price-meal\"> That’s only 14.90$ per meal </p>\r\n                        </div>\r\n                        <div>\r\n                            <ul>\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> 1 meal 10 days/month </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i>Order 24/7 </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Access to newest creations </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Free delivery </li>\r\n\r\n                            </ul>\r\n                        </div>\r\n\r\n                        <div>\r\n\r\n                            <a href=\"#\" class=\"btn btn-ghost\"> Sign up now </a>\r\n                     </div>\r\n\r\n                    </div>\r\n                </div>\r\n\r\n                 <div class=\"col span_1_of_3\">\r\n                    <div class=\"plan-box\">\r\n                        <div>\r\n                            <h3>  Starter </h3>\r\n                            <p class=\"plan-price\"> $19 <span> / meal </span> </p>\r\n                            <p class=\"plan-price-meal\"> &nbsp;  </p>\r\n\r\n                        </div>\r\n                        <div>\r\n                            <ul>\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> 1 meal </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Order from 8 am to 12 pm</li>\r\n\r\n                                <li> <i class=\"ion-ios-close-empty icon-small\"> </i> &nbsp; </li>\r\n\r\n                                <li> <i class=\"ion-ios-checkmark-empty icon-small\"> </i> Free delivery </li>\r\n\r\n                            </ul>\r\n                        </div>\r\n\r\n                        <div>\r\n\r\n                            <a href=\"#\" class=\"btn btn-ghost\"> Sign up now </a>\r\n                     </div>\r\n\r\n                    </div>\r\n                </div>\r\n\r\n\r\n\r\n\r\n\r\n            </div>\r\n\r\n        </section>', 4, 1, NULL, NULL),
(7, 'form', '<section class=\"section-form clearfix\">\r\n\r\n            <div class=\"row\">\r\n\r\n                    <h2>We\'re happy to hear from you</h2>\r\n\r\n\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <form method=\"POST\" action=\"#\" class=\"contact-form\">\r\n\r\n                    <div class=\"row\">\r\n\r\n                        <div class=\"col span_1_of_3\">\r\n\r\n                            <label for=\"name\"> Name </label>\r\n                        </div>\r\n\r\n                        <div class=\"col span_2_of_3\">\r\n\r\n\r\n                            <input type=\"text\" name=\"name\" id=\"name\" placeholder=\"Your name\" required>\r\n\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                     <div class=\"row\">\r\n\r\n                        <div class=\"col span_1_of_3\">\r\n\r\n                            <label for=\"email\"> Email </label>\r\n                        </div>\r\n\r\n                        <div class=\"col span_2_of_3\">\r\n\r\n\r\n                            <input type=\"email\" name=\"email\" id=\"email\" placeholder=\"Your email\" required>\r\n\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                     <div class=\"row\">\r\n\r\n                        <div class=\"col span_1_of_3\">\r\n\r\n                            <label for=\"find-us\"> How did you find us? </label>\r\n                        </div>\r\n\r\n                        <div class=\"col span_2_of_3\">\r\n\r\n\r\n                            <select name=\"find-us\" id=\"find-us\">\r\n                                <option value=\"friends\">Friends</option>\r\n                                <option value=\"search\" selected>Search engine</option>\r\n                                <option value=\"ad\">Advertisement</option>\r\n                                <option value=\"other\">other</option>\r\n\r\n                            </select>\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                      <div class=\"row\">\r\n\r\n                        <div class=\"col span_1_of_3\">\r\n\r\n                            <label > Newsletter </label>\r\n                        </div>\r\n\r\n                        <div class=\"col span_2_of_3\">\r\n\r\n\r\n                            <input type=\"checkbox\" name=\"news\" id=\"news\" checked> Yes, please\r\n\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                      <div class=\"row\">\r\n\r\n                        <div class=\"col span_1_of_3\">\r\n\r\n                            <label for=\"message\"> Drop us a line </label>\r\n                        </div>\r\n\r\n                        <div class=\"col span_2_of_3\">\r\n\r\n\r\n                           <textarea name=\"message\" placeholder=\"Your message\" id=\"message\"></textarea>\r\n\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                     <div class=\"row\">\r\n\r\n                        <div class=\"col span_1_of_3\">\r\n\r\n                            <label> &nbsp; </label>\r\n                        </div>\r\n\r\n                        <div class=\"col span_2_of_3\">\r\n\r\n\r\n                            <input type=\"submit\" Value=\"Send it!\">\r\n\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                </form>\r\n\r\n\r\n\r\n            </div>\r\n\r\n\r\n\r\n        </section>', NULL, 1, NULL, NULL),
(8, 'footer', '<footer >\r\n          <div class=\"row clearfix\">\r\n\r\n              <div class=\"col span_1_of_2\">\r\n\r\n                  <ul class=\"footer-nav\">\r\n\r\n                      <li> <a href=\"#\"> About us </a> </li>\r\n                      <li> <a href=\"#\"> Blog </a> </li>\r\n                      <li> <a href=\"#\"> Press </a> </li>\r\n                      <li> <a href=\"#\"> IOS App </a> </li>\r\n                      <li> <a href=\"#\"> Android App </a> </li>\r\n\r\n                  </ul>\r\n              </div>\r\n\r\n              <div class=\"col span_1_of_2 \">\r\n\r\n                  <ul class=\"social-links\">\r\n\r\n\r\n                      <li> <a href=\"#\"><i class=\"ion-social-facebook\"></i>  </a> </li>\r\n                      <li> <a href=\"#\"><i class=\"ion-social-twitter\"></i>  </a> </li>\r\n                      <li> <a href=\"#\"><i class=\"ion-social-googleplus\"></i>  </a> </li>\r\n                      <li> <a href=\"#\"><i class=\"ion-social-instagram\"></i>  </a> </li>\r\n\r\n\r\n\r\n                  </ul>\r\n\r\n\r\n              </div>\r\n\r\n\r\n          </div>\r\n\r\n          <div class=\"row\">\r\n            <p>\r\n\r\n                Copyright &copy; 2015 by Omnifood. All rights reserved.\r\n\r\n            </p>\r\n          </div>\r\n\r\n\r\n        </footer>', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_tag_id_unique` (`tag_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
