-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 05:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `l8_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `detail`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Category 1', 'Category 1', '1606573037.jpg', '2020-11-11 12:23:10', '2020-11-28 08:47:17'),
(4, 'Category 2', 'Category 2', '1606573047.jpg', '2020-11-13 12:01:06', '2020-11-28 08:47:27'),
(5, 'War in Ukraine', 'War in Ukraine', '1653017897.png', '2022-05-19 21:38:17', '2022-05-19 21:38:17'),
(6, 'Coronavirus', 'Coronavirus', '1653018021.jpg', '2022-05-19 21:40:21', '2022-05-19 21:40:21'),
(7, 'Climate', 'Climate', '1653018116.jpg', '2022-05-19 21:41:56', '2022-05-19 21:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(3, 2, 4, 'This is third comment', '2020-11-24 21:31:59', '2020-11-24 21:31:59'),
(4, 1, 4, 'This is fourth comment', '2020-11-24 22:16:25', '2020-11-24 22:16:25'),
(5, 3, 14, 'test comment 1', '2022-05-20 00:26:27', '2022-05-20 00:26:27'),
(6, 3, 14, 'eeee', '2022-05-20 00:31:19', '2022-05-20 00:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_14_155730_create_categories_table', 2),
(5, '2020_10_14_160045_create_posts_table', 3),
(6, '2020_10_14_160317_create_comments_table', 4),
(7, '2020_11_08_163752_create_admins_table', 5),
(8, '2020_11_17_164915_create_settings_table', 6),
(9, '2020_11_25_163331_add_view_to_posts_table', 7),
(10, '2020_11_25_165136_add_votes_to_posts', 8),
(11, '2020_11_28_144807_add_status_to_posts_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `cat_id`, `title`, `thumb`, `full_img`, `detail`, `tags`, `created_at`, `updated_at`, `views`, `status`) VALUES
(3, 0, 4, 'Post Title 3', '1605289756.jpg', '1605289265.jpg', 'Post Title 3 detail', 'tag1, tag2', '2020-11-13 12:11:05', '2022-05-17 07:47:20', 17, 0),
(4, 0, 4, 'Post Title 2', '1605751577.jpg', '1605751577.jpg', 'Post Title 2 Detail', 'tag1, tag2, tag3', '2020-11-18 20:36:17', '2022-05-17 07:47:13', 13, 0),
(5, 1, 3, 'Post Title 3', '1606575613.jpg', '1606575613.jpg', 'This is post title 3 detail', 'post title 3, post title 4', '2020-11-28 09:30:13', '2022-05-17 07:47:07', 4, 1),
(6, 0, 5, 'Ukrainian widow confronts Russian soldier accused of killing her husband', '1653018415.jpg', '1653018415.jpg', 'This landmark trial marks the first time a Russian serviceman has been put on the stand for war crimes since the invasion of Ukraine was launched in February.\r\n\r\nAnd perhaps such raw encounters are what such trials are about, at least in part. Forcing a soldier - who ignored all the rules of war - to face up to exactly what he has done and the suffering he has caused.\r\n\r\nSgt Shishimarin has pleaded guilty and Ukrainian prosecutors are asking for him to be sentenced to life imprisonment.\r\n\r\nOn Wednesday, Ms Shelipova told me she actually felt sorry for the soldier, but she could not forgive him for this crime.\r\n\r\nShe heard the shots that killed her husband, then saw Sgt Shishimarin through her gate - holding his weapon.\r\n\r\nFive minutes later she says she saw her husband\'s body: \"He was dead with a shot in his head. I started screaming very loudly.\"\r\n\r\n\"The loss of my husband is everything for me,\" Ms Shelipova said, adding: \"He was my protector.\"\r\n\r\n\'It killed him\'\r\nRecalling the events of 28 February, Vadim Shishimarin said he and a small group of other Russian soldiers had become separated from their unit and hijacked a car in order to return to it.\r\n\r\n\"As we were driving, we saw a man. He was talking on the phone,\" the defendant said.', 'war, ukraine, europe', '2022-05-19 21:46:55', '2022-05-19 21:46:55', 0, 0),
(7, 0, 5, 'Ukraine invasion could cause global food crisis, UN warns', '1653018508.jpg', '1653018508.jpg', 'Russia\'s invasion of Ukraine could soon cause a global food crisis that may last for years, the UN has warned.\r\n\r\nSecretary-General Antonio Guterres said the war had worsened food insecurity in poorer nations due to rising prices.\r\n\r\nSome countries could face long-term famines if Ukraine\'s exports are not restored to pre-war levels, he added.\r\n\r\nThe conflict has cut off supplies from Ukraine\'s ports, which once exported vast amounts of cooking oil as well as cereals such as maize and wheat.\r\n\r\nThis has reduced the global supply and caused the price of alternatives to soar. Global food prices are almost 30% higher than the same time last year, according to the UN.\r\n\r\nSpeaking in New York on Wednesday, Mr Guterres said the conflict - combined with the effects of climate change and the pandemic - \"threatens to tip tens of millions of people over the edge into food insecurity followed by malnutrition, mass hunger and famine\".\r\n\r\n\"There is enough food in our world now if we act together. But unless we solve this problem today, we face the spectre of global food shortage in the coming months,\" he added.\r\n\r\nHe warned that the only effective solution to the crisis was reintegrating Ukraine\'s food production, as well as fertiliser produced by both Russia and Belarus, back into the global market.', 'ukraine, war, europe, politics', '2022-05-19 21:48:28', '2022-05-19 21:48:28', 0, 0),
(8, 0, 5, 'Mariupol\'s Azovstal fighters: What next for Ukraine\'s captured soldiers', '1653018589.jpg', '1653018589.jpg', 'Nearly 1,000 Ukrainian fighters, who have been holed up in the Azovstal steelworks in Mariupol for weeks, have left their positions and handed themselves over to Russian forces and pro-Russian separatists, according to Russia\'s defence ministry.\r\n\r\nThe evacuation marks the likely end of the battle for the southern Ukrainian port city of Mariupol, which lies in ruins after weeks of relentless Russian bombardment.\r\n\r\nWhat happens next to the evacuated Azovstal fighters is unclear, with Ukraine calling for a prisoner swap but some in Russia suggesting they should be put on trial.\r\n\r\n\"Ukraine needs Ukrainian heroes alive,\" Ukrainian President Volodymyr Zelensky said in his nightly address after the evacuation of the steelworks began, adding that \"work continues to bring our lads home\".\r\n\r\nBut when and if that will happen is uncertain and details of the agreement brokered between the two sides, as well as the UN and the Red Cross, are unknown.', 'war, ukraine, europe, fighters', '2022-05-19 21:49:49', '2022-05-19 21:49:49', 0, 0),
(9, 0, 6, 'North Korea: More than a million Covid cases feared', '1653023795.jpg', '1653023795.jpg', 'North Korea\'s leader Kim Jong-un has lambasted health officials and ordered the army to help distribute medicine, as a wave of Covid cases sweeps through the country.\r\n\r\nMore than a million people have now been sickened by what Pyongyang is calling a \"fever\", state media said.\r\n\r\nSome 50 people have died, but it\'s unclear how many of those suspected cases tested positive for Covid.\r\n\r\nNorth Korea has only limited testing capacity, so few cases are confirmed.\r\n\r\nNorth Koreans are likely to be especially vulnerable to the virus due to lack of vaccinations and a poor healthcare system. A nationwide lockdown is in place in the reclusive country.\r\n\r\nState media said Mr Kim led an emergency politburo meeting at the weekend where he accused officials of bungling the distribution of the national medicine reserves.\r\n\r\nHe ordered that the \"powerful forces\" of the army\'s medical corps step in to \"immediately stabilise the supply of medicines in Pyongyang City\".\r\n\r\nWhat will the pandemic look like in North Korea?\r\nWhy doesn\'t North Korea have enough food?\r\nHow dangerous is the situation in North Korea?\r\nThe country announced its first confirmed Covid cases last week - although experts believe the virus has likely been circulating for some time.\r\n\r\nMr Kim has imposed \"maximum emergency\" virus controls, including lockdowns and gathering restrictions in workplaces.\r\n\r\nThe international community offered to supply North Korea with millions of AstraZeneca and Chinese-made jabs last year, but Pyongyang claimed it had controlled Covid by sealing its borders early in January 2020.', 'coronavirus, korea, covid', '2022-05-19 23:16:35', '2022-05-19 23:16:35', 0, 0),
(10, 0, 6, 'Covid: What will the pandemic look like in North Korea?', '1653024437.jpg', '1653024437.jpg', 'For almost two-and-a-half years, North Korea has stuck to its claim it has seen no cases of Covid-19. Not any more.\r\n\r\nThis week, the country confirmed its first infections. The highly reclusive nation had responded to the pandemic by closing its borders, although few believed it had really managed to escape the virus.\r\n\r\nNow, the authorities are not only acknowledging the virus\' presence but declaring an all-out battle to control it, with North Korean leader Kim Jong-un calling it the \"greatest turmoil\" to fall on the nation since its founding. A national lockdown is in place.\r\n\r\nHardly anywhere in the world is untouched by Covid. Cases have been recorded at the base camp of Everest and in Antarctica. Individual nations\' responses to the pandemic have varied in severity, but have broadly meant vaccine programmes, testing, social distancing and limits on travel.\r\n\r\nHow the pandemic in North Korea will unfold is likely to remain murky, given the nation\'s secrecy.\r\n\r\nThere are fears Covid could be disastrous there. \"I\'m really concerned about how many people are going to die,\" said one of the experts who spoke to the BBC.', 'coronavirus, covid, korea', '2022-05-19 23:26:34', '2022-05-19 23:27:17', 0, 0),
(11, 0, 6, 'Shanghai lockdown: China unemployment rate near pandemic peak', '1653024874.jpg', '1653024874.jpg', 'China\'s jobless rate rose to 6.1% in April, the highest level since the 6.2% peak seen in the early part of the Covid-19 pandemic in February 2020.\r\n\r\nIt comes as widening lockdowns led to a sharp slowdown in activity for the world\'s second largest economy.\r\n\r\nOfficial figures also show retailers and manufacturers were hit hard.\r\n\r\nFull or partial lockdowns were imposed in dozens of cities in March and April, including a long shutdown of the commercial centre Shanghai.\r\n\r\nChinese Premier Li Keqiang recently described the country\'s employment situation \"complicated and grim\" following the worst outbreaks of the virus since 2020.\r\n\r\nStill, the government aims to keep the jobless rate below 5.5% for this year as a whole.\r\n\r\nHow China’s lockdowns could hit UK prices\r\nThe hard life of a homeless Shanghai deliveryman\r\nThe rise in unemployment came as lockdowns had an impact across the Chinese economy.\r\n\r\nRetail sales saw the biggest contraction since March 2020 as they shrank by 11.1% in April from a year earlier, according to China\'s National Bureau of Statistics.\r\n\r\nThat was much worse than March\'s 3.5% drop and missed the economists\' expectations of a 6.1% fall.\r\n\r\nAt the same time industrial production fell by 2.9% from a year earlier, as measures to stop the spread of the coronavirus had a major impact on supply chains.\r\n\r\nThat was the largest decline since February 2020 and marked a reversal of the 5% gain in March.\r\n\r\nHowever, Shanghai on Monday set out plans for the return of more normal life from the start of next month and the end of a lockdown that has lasted more than six weeks and contributed to the sharp slowdown of China\'s economy.\r\n\r\nIn the clearest timetable yet, Deputy Mayor Zong Ming said the reopening of the financial, manufacturing and trading hub would be carried out in stages, with movement curbs largely to remain in place until 21 May to prevent an increase of infections, before a gradual easing.', 'coronavirus, covid, china, shanghai', '2022-05-19 23:34:34', '2022-05-19 23:34:34', 0, 0),
(12, 0, 7, 'Climate change swells odds of record India, Pakistan heatwaves', '1653025785.jpg', '1653025785.jpg', 'Climate change makes record-breaking heatwaves in northwest India and Pakistan 100 times more likely, a Met Office study finds.\r\n\r\nThe region should now expect a heatwave that exceeds the record temperatures seen in 2010 once every three years.\r\n\r\nWithout climate change, such extreme temperatures would occur only once every 312 years, the Met Office says.\r\n\r\nForecasters say temperatures in north-west India could reach new highs in the coming days.\r\n\r\nThe new analysis comes as a State of the Climate report from the World Meteorological Organisation, the UN\'s atmospheric science arm, warns that four key indicators of climate change set new records in 2021 - greenhouse gas concentrations, sea level rise, ocean heat and ocean acidification.\r\n\r\nThe UN Secretary General, Antonio Guterres described the report as \"a dismal litany of humanity\'s failure to tackle climate disruption.\"', 'un, climate, pakistan', '2022-05-19 23:49:45', '2022-05-19 23:49:45', 0, 0),
(13, 0, 7, 'Will swapping out electric car batteries catch on?', '1653025832.jpg', '1653025832.jpg', 'Without even a touch of the steering wheel, the electric car reverses autonomously into the recharging station.\r\n\r\nI won\'t be plugging it in though, instead, the battery will be swapped for a fresh one, at this facility in Norway belonging to Chinese electric carmaker, Nio.\r\n\r\nThe technology is already widespread in China, but the new Power Swap Station, just south of Oslo, is Europe\'s first.\r\n\r\nThe company hopes that swapping-out the entire battery will appeal to customers worried about the range of electric cars, or who simply don\'t like queuing to recharge.\r\n\r\nIt was certainly straightforward to book a slot on Nio\'s app, and once inside the station, all I have to do is park on the designated markings and wait in the car.\r\n\r\nI can hear bolts being undone as the battery is automatically removed from underneath the vehicle and replaced with a fully- charged one.\r\n\r\nIn less than five minutes, I\'m ready to go again.', 'cars, climate', '2022-05-19 23:50:14', '2022-05-19 23:50:32', 0, 0),
(14, 0, 7, 'What is climate change? A really simple guide', '1653025878.jpg', '1653025878.jpg', 'World temperatures are rising because of human activity, and climate change now threatens every aspect of human life.\r\n\r\nLeft unchecked, humans and nature will experience catastrophic warming, with worsening droughts, greater sea level rise and mass extinction of species.\r\n\r\nWe face a huge challenge, but there are potential solutions.\r\n\r\nWhat is climate change?\r\nClimate is the average weather in a place over many years. Climate change is a shift in those average conditions.\r\n\r\nThe rapid climate change we are now seeing is caused by humans using oil, gas and coal for their homes, factories and transport.\r\n\r\nWhen these fossil fuels burn, they release greenhouse gases - mostly carbon dioxide (CO2). These gases trap the Sun\'s heat and cause the planet\'s temperature to rise.', 'climate, fossil', '2022-05-19 23:51:18', '2022-05-21 09:02:07', 11, 0),
(18, 3, 3, 'qwe', 'na', 'na', 'qwe', 'qwe', '2022-05-21 09:18:42', '2022-05-21 09:26:57', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_auto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_auto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `recent_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `popular_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `recent_comment_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `comment_auto`, `user_auto`, `recent_limit`, `popular_limit`, `recent_comment_limit`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '10', '10', '10', '2020-11-17 11:27:12', '2022-05-20 00:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@gmail.com', NULL, '$2y$10$bddLTVD41yry.pUP0gfnTO2Ijb8jnWXh0mHOpAT8RvShXHmrGY5TO', NULL, '2020-11-23 12:16:12', '2020-11-23 12:16:12'),
(3, 'user1', 'user1@gmail.com', NULL, '$2y$10$eF/msDX2wBhIPRJLKyEkd.NfpAJcvlm6MKPzrhWKmn2euOxBKTV4.', NULL, '2022-05-20 00:25:29', '2022-05-20 00:25:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
