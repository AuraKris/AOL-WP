-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2024 at 10:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aol_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('test@gmail.com|127.0.0.1', 'i:1;', 1735372955),
('test@gmail.com|127.0.0.1:timer', 'i:1735372955;', 1735372955);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_25_172758_create_news_table', 1),
(5, '2024_12_25_173228_create_spotlights_table', 1),
(6, '2024_12_25_173259_create_threads_table', 1),
(7, '2024_12_25_173300_create_replies_table', 1),
(8, '2024_12_27_202619_add_views_to_news_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `content`, `image`, `created_at`, `updated_at`, `views`) VALUES
(1, '4 or 5-minute bouts of intense exercise may slash cardiovascular risk', 'John Doe', 'Recent research suggests that short bursts of intense physical activity lasting just four to five minutes may significantly reduce the risk of cardiovascular disease. These brief but vigorous exercise sessions, often called \"exercise snacks,\" improve heart health by enhancing blood flow, reducing blood pressure, and increasing oxygen uptake. Activities such as brisk cycling, fast running, or high-energy aerobic exercises are particularly effective for achieving these benefits.\n\n                High-intensity exercise offers a time-efficient way to improve markers of heart health, delivering results comparable to longer, moderate workouts. Incorporating these short, intense bouts into your daily routine can be as simple as performing a few minutes of sprinting, jumping jacks, or cycling. However, individuals with pre-existing health conditions should consult a healthcare professional before starting such routines. Embracing these quick bursts of activity can help pave the way to a healthier heart and a longer life.\n\n                Moreover, these exercises can be particularly beneficial for individuals with busy schedules, allowing them to prioritize health without dedicating significant time. Even climbing stairs or short, fast-paced walks during breaks can provide similar benefits when performed with intensity. Such activities are accessible and adaptable, making them suitable for a wide range of fitness levels.', 'https://images.ctfassets.net/cnu0m8re1exe/1P5260aPwy2dk4jWNofEZt/fd802e34c6b517f020dc2979ae92c789/Intense-Exercise.jpg?fm=jpg&fl=progressive&w=660&h=433&fit=fill', '2024-12-27 13:21:03', '2024-12-28 01:57:08', 44),
(2, 'The Benefits of a Plant-Based Diet for Heart Health', 'Jane Smith', 'A plant-based diet, rich in fruits, vegetables, whole grains, nuts, and seeds, has been shown to significantly improve heart health by reducing the risk of cardiovascular disease. This diet is packed with antioxidants, fiber, and healthy fats, all of which contribute to lower cholesterol levels, reduced blood pressure, and better overall heart function.\n\n                Studies have found that individuals who follow a plant-based diet tend to have lower rates of heart disease compared to those who consume diets high in animal products. The high levels of fiber in plant-based foods help reduce LDL cholesterol, while the healthy fats found in nuts, seeds, and plant oils can increase HDL cholesterol, further promoting cardiovascular health.\n\n                The plant-based diet is not only heart-healthy but also contributes to weight loss and improved blood sugar control, both of which are essential for preventing or managing heart disease. Additionally, this dietary approach is often lower in calories and saturated fats, which helps reduce inflammation in the body, a key factor in heart disease development.\n\n                Adopting a plant-based diet can be easier than one might think, with a variety of delicious recipes available that replace meat and dairy with plant-based alternatives like legumes, tofu, and whole grains. By incorporating more plant-based foods into your meals, you can enjoy a variety of health benefits while protecting your heart from disease.', 'https://www.cuimc.columbia.edu/sites/default/files/styles/cola_media_1280_16_9/public/media/images/2022-04/gettyimages-854725372_plant-based_diet.jpg?itok=MiaLthBl', '2024-12-27 13:21:03', '2024-12-28 02:00:54', 5),
(3, 'Breaking Down the Impact of Stress on Heart Health', 'Mike Johnson', 'Chronic stress has long been linked to an increased risk of cardiovascular disease, with studies showing that people under constant stress are more likely to experience heart-related issues, including heart attacks and strokes. When the body experiences stress, it produces stress hormones like cortisol and adrenaline, which elevate heart rate and blood pressure, placing extra strain on the heart.\n\n                Over time, prolonged stress can lead to inflammation, increased clotting factors in the blood, and changes in blood vessels that contribute to the development of heart disease. Moreover, stress often leads to unhealthy behaviors such as overeating, smoking, or lack of exercise, further increasing the risk of cardiovascular issues.\n\n                Managing stress is a key component of maintaining heart health. Practices such as mindfulness meditation, yoga, and deep breathing exercises can help activate the body’s relaxation response, reducing the production of stress hormones and allowing the heart to recover. Regular physical activity, healthy eating, and proper sleep hygiene are also essential for managing stress levels effectively.\n\n                By addressing the root causes of stress and adopting healthier coping mechanisms, individuals can significantly reduce the risk of developing heart disease and improve their overall well-being.', 'https://i0.wp.com/blog.fourthfrontier.com/uk/wp-content/uploads/2022/11/How-does-stress-affect-heart-health.jpg?resize=960%2C636&ssl=1', '2024-12-27 13:21:03', '2024-12-28 01:06:10', 3),
(4, 'The Role of Sleep in Cardiovascular Health', 'Anna Lee', 'A good night’s sleep plays a vital role in maintaining heart health. Chronic sleep deprivation has been shown to increase the risk of cardiovascular diseases, including hypertension, heart attack, and stroke. During sleep, the body undergoes essential processes such as lowering blood pressure, reducing heart rate, and repairing blood vessels.\n\n                Studies have shown that individuals who consistently sleep less than six hours per night are at a higher risk for developing heart disease. Sleep deprivation leads to elevated stress hormones, increased inflammation, and disturbed metabolic function, all of which contribute to the development of cardiovascular issues.\n\n                Quality sleep is important for regulating blood pressure, reducing inflammation, and balancing cholesterol levels. Experts recommend aiming for 7-9 hours of sleep per night to support overall heart health. In addition to proper sleep, maintaining a consistent sleep schedule and creating a relaxing bedtime routine can improve sleep quality and contribute to long-term heart health.\n\n                Individuals who struggle with sleep disorders, such as sleep apnea, should seek medical treatment to prevent complications related to cardiovascular health. Simple changes, like reducing screen time before bed and practicing relaxation techniques, can make a significant difference in both sleep quality and heart health.', 'https://health.ucdavis.edu/media-resources/contenthub/post/internet/cultivating-health/2023/03/images-body/good-night-sleep.jpg', '2024-12-27 13:21:03', '2024-12-27 14:04:31', 1),
(5, 'Exercise and its Positive Effects on Blood Pressure', 'Robert Smith', 'Regular physical activity is one of the most effective ways to manage and reduce high blood pressure. Engaging in aerobic exercises such as walking, jogging, cycling, or swimming can help lower systolic and diastolic blood pressure readings, which significantly reduces the risk of heart disease and stroke.\n\n                Studies have found that consistent exercise strengthens the heart, allowing it to pump blood more efficiently and reducing the strain on the arteries. In addition to aerobic activity, strength training exercises, such as lifting weights, can also contribute to better blood pressure management by increasing muscle mass and improving metabolic function.\n\n                For individuals with high blood pressure, even moderate amounts of exercise, such as 30 minutes of brisk walking per day, can make a noticeable difference. In combination with a healthy diet and weight management, regular physical activity is a cornerstone of managing hypertension and promoting cardiovascular health.\n\n                It’s important to note that before beginning an exercise regimen, individuals with hypertension or other cardiovascular conditions should consult with a healthcare provider to ensure the chosen exercises are safe and effective for their specific needs.', 'https://blog.nasm.org/hubfs/low-blood-pressure-exercise.jpg', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0),
(6, 'How Stress Management Can Improve Your Heart Health', 'Laura Green', 'Chronic stress is one of the leading contributors to heart disease, but managing stress can lead to significant improvements in cardiovascular health. Techniques such as mindfulness, yoga, meditation, and deep breathing exercises can help reduce the levels of stress hormones in the body, which in turn lowers blood pressure and heart rate.\n\n                When individuals experience stress, their bodies enter a “fight or flight” mode, causing increased blood pressure, faster heart rate, and inflammation. Over time, these effects can lead to the development of plaque in the arteries, increasing the risk of a heart attack or stroke. However, by practicing stress-reducing techniques, individuals can reverse this effect and improve heart health.\n\n                Regularly practicing relaxation techniques also helps reduce anxiety and depression, which are linked to an increased risk of cardiovascular problems. Additionally, physical activities like walking or gentle stretching help release built-up tension in the body and promote relaxation, further benefiting heart health.\n\n                Adopting a holistic approach to managing stress can have a profound impact on cardiovascular health, reducing the risk of heart disease and promoting a better quality of life.', 'https://providencemedicalassociates.org/wp-content/uploads/2023/07/stress-1.jpg', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0),
(7, 'The Link Between High Cholesterol and Heart Disease', 'Ellen Parker', 'High cholesterol is one of the leading risk factors for cardiovascular diseases, including heart attacks and strokes. Cholesterol, a fatty substance in the blood, can build up on the walls of the arteries, forming plaques that narrow and harden the blood vessels, reducing blood flow to vital organs. This condition, called atherosclerosis, increases the risk of heart disease.\n\n                There are two types of cholesterol: low-density lipoprotein (LDL), often referred to as \"bad\" cholesterol, and high-density lipoprotein (HDL), known as \"good\" cholesterol. Elevated levels of LDL cholesterol contribute to plaque formation, while higher levels of HDL cholesterol help remove excess cholesterol from the bloodstream.\n\n                Managing cholesterol levels through diet, exercise, and medication can significantly reduce the risk of heart disease. Eating a diet rich in fiber, fruits, vegetables, and healthy fats can help lower LDL cholesterol, while regular physical activity can raise HDL cholesterol levels. For individuals with high cholesterol, doctors may prescribe statins or other medications to lower LDL levels and protect heart health.', 'https://images.ctfassets.net/ut7rzv8yehpf/4gCp9rn16r55WflDB9HrG3/53b6c15a11e88107fd29bb869d182520/Are_There_Symptoms_of_High_Cholesterol.jpeg?w=1240&h=943&fl=progressive&q=50&fm=jpg', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0),
(8, 'The Importance of Hydration for Cardiovascular Health', 'Tom Harris', 'Proper hydration is essential for maintaining good cardiovascular health. Water helps maintain the volume of blood circulating through the body, allowing the heart to pump blood efficiently. Dehydration, even mild, can lead to a decrease in blood volume, causing the heart to work harder to supply oxygen and nutrients to vital organs.\n\n                Studies have shown that dehydration can increase the risk of developing hypertension, a condition where blood pressure levels become dangerously high. When the body is dehydrated, blood vessels constrict, making it harder for blood to flow smoothly, which can increase the strain on the heart.\n\n                To maintain healthy hydration levels, it’s important to drink enough water throughout the day, especially during physical activity or hot weather. Aim to drink at least 8 cups (64 ounces) of water per day, or more depending on individual needs, such as exercise intensity and climate conditions. In addition to water, hydrating foods like fruits and vegetables can also help replenish fluids and maintain heart health.', 'https://www.watercoolersdirect.com/wp/wp-content/uploads/2022/04/Hydration-and-Heart-Health-Blog-Cover.png', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0),
(9, 'The Role of Omega-3 Fatty Acids in Preventing Heart Disease', 'Sophia Davis', 'Omega-3 fatty acids, essential fats found in certain foods, play a significant role in preventing heart disease. These healthy fats help reduce inflammation in the body, lower blood pressure, and decrease triglyceride levels, all of which contribute to better cardiovascular health.\n\n                Studies have shown that omega-3s can help prevent the buildup of plaque in the arteries, a condition known as atherosclerosis, which leads to heart attacks and strokes. Omega-3 fatty acids also support healthy heart rhythms and can reduce the risk of arrhythmias, which are irregular heartbeats that can be life-threatening.\n\n                Omega-3 fatty acids are found in foods such as fatty fish (salmon, mackerel, sardines), flaxseeds, chia seeds, walnuts, and fortified products like eggs and dairy. For those who do not consume enough omega-3-rich foods, supplements like fish oil can be an effective alternative.\n\n                Incorporating omega-3-rich foods into your diet, along with other heart-healthy habits like regular exercise and a balanced diet, can significantly improve heart health and lower the risk of cardiovascular diseases.', 'https://www.hshairclinic.co.uk/wp-content/uploads/2024/08/Food-rich-in-omega-3-fatty-acid-and-healthy-fats.webp', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0),
(10, 'The Impact of Smoking on Cardiovascular Health', 'John Lee', 'Smoking is one of the leading preventable causes of cardiovascular disease, including heart attacks, strokes, and peripheral artery disease. The chemicals in tobacco smoke damage the blood vessels, increasing the risk of atherosclerosis, a condition where plaque builds up in the arteries, restricting blood flow to vital organs.\n\n                Smoking also increases the levels of \"bad\" LDL cholesterol and decreases the levels of \"good\" HDL cholesterol, further contributing to the development of heart disease. The nicotine in cigarettes raises heart rate and blood pressure, putting additional strain on the cardiovascular system.\n\n                Quitting smoking is the most important step individuals can take to improve heart health. Within just a few weeks of quitting, blood pressure and heart rate begin to return to normal, and within a year, the risk of heart disease is halved compared to that of a smoker. Support from healthcare providers, smoking cessation programs, and lifestyle changes such as regular exercise and a balanced diet can help individuals successfully quit smoking and protect their heart health.', 'https://hips.hearstapps.com/hmg-prod/images/collage-heart-smoking-1-1527882362.jpg', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0),
(11, 'How Meditation Reduces the Risk of Heart Disease', 'Clara Roberts', 'Meditation, a practice of focused attention and mindfulness, has been shown to reduce stress, lower blood pressure, and improve overall heart health. Research indicates that regular meditation can help calm the nervous system, lower the production of stress hormones like cortisol, and reduce inflammation in the body—all of which contribute to a healthier heart.\n\n                Meditation techniques such as deep breathing, guided imagery, and mindfulness can help lower blood pressure by inducing the relaxation response in the body. This effect helps reduce the strain on the cardiovascular system, potentially lowering the risk of hypertension, heart disease, and stroke.\n\n                Studies have also found that meditation can help improve emotional well-being, reduce anxiety, and prevent depression, all of which are linked to better heart health. Whether practiced for just a few minutes each day or incorporated into a longer routine, meditation is a simple yet powerful tool to enhance cardiovascular health.\n\n                For individuals looking to protect their heart health, incorporating meditation into daily life, alongside other healthy habits like regular exercise and a balanced diet, can lead to long-term improvements in overall well-being.', 'https://www.cancer.org/adobe/dynamicmedia/deliver/dm-aid--c705d936-4526-4d8f-a221-455a9c0a8ed5/man-meditating-outside-restricted.jpg?quality=82&preferwebp=true', '2024-12-27 13:21:03', '2024-12-28 01:31:17', 14),
(12, 'The Effects of Air Pollution on Heart Disease', 'Michael Black', 'Air pollution, particularly fine particulate matter (PM2.5), has been linked to an increased risk of cardiovascular diseases. Exposure to polluted air can cause inflammation and oxidative stress, which damage the blood vessels and contribute to the development of heart disease. Long-term exposure to air pollution is associated with an increased risk of heart attacks, strokes, and other cardiovascular events.\n\n                Studies have shown that individuals living in areas with high levels of air pollution are more likely to develop hypertension, atherosclerosis, and other heart-related conditions. Fine particulate matter from car exhaust, industrial emissions, and other sources can enter the bloodstream, causing damage to the endothelial cells lining the blood vessels and impairing their ability to regulate blood flow.\n\n                Reducing exposure to air pollution is crucial for maintaining heart health. Measures such as staying indoors during high pollution days, using air purifiers, and avoiding areas with heavy traffic can help minimize exposure. Additionally, individuals with existing heart conditions should take extra precautions to limit their exposure to polluted air.\n\n                On a larger scale, policies aimed at reducing air pollution, such as stricter emissions regulations and the promotion of clean energy, can have a significant impact on public health, particularly in reducing the burden of cardiovascular diseases.', 'https://www.world-heart-federation.org/wp-content/uploads/2019/06/invisiblekiller2_all4_2018-edited.jpg', '2024-12-27 13:21:03', '2024-12-28 01:31:07', 70),
(13, 'How Diabetes Affects Your Heart Health', 'James Wilson', 'Diabetes is a major risk factor for heart disease. Individuals with diabetes are more likely to develop high blood pressure, high cholesterol, and atherosclerosis, all of which increase the risk of heart attacks and strokes. High blood sugar levels can damage blood vessels over time, leading to poor circulation and reduced oxygen flow to vital organs.\n\n                Poorly managed diabetes can lead to an increased risk of heart failure, a condition where the heart is unable to pump blood effectively, and peripheral artery disease, which reduces blood flow to the limbs. In fact, diabetes is one of the leading causes of heart disease, and individuals with diabetes are twice as likely to experience cardiovascular problems compared to those without the condition.\n\n                Managing blood sugar levels through a combination of diet, exercise, and medication is essential for protecting heart health. Eating a balanced diet rich in fiber, whole grains, and healthy fats, along with regular physical activity, can help improve insulin sensitivity and reduce the risk of heart disease. For individuals with diabetes, regular monitoring of blood sugar levels and working closely with healthcare providers to manage the condition is crucial.', 'https://static.banyumaskab.go.id/website/images/website_1111201037225fab5c72eb04f.jpg', '2024-12-27 13:21:03', '2024-12-27 13:21:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `content`, `thread_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'I had a friend with endometriosis, and it was really tough for her to get a diagnosis. The symptoms can be really hard to distinguish from other things, so always get a second opinion if needed.', 2, 1, '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(2, 'PCOS is another common issue. It’s important to focus on managing it early on because it can lead to fertility problems if left untreated.', 2, 2, '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(3, 'For STIs, regular check-ups and safe sex practices are key. Sometimes symptoms aren’t obvious, so it’s always a good idea to get tested regularly.', 2, 3, '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(4, 'I think one of the biggest myths is that infertility is always related to women. Men can have infertility issues as well, but it’s often overlooked.', 3, 4, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(5, 'Definitely! And people often think that STIs are only a concern for people who are promiscuous. But anyone can get one, and it’s important to get tested if you’re sexually active.', 3, 5, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(6, 'Another myth is that endometriosis only affects older women, but it can also affect younger women, sometimes even during their teenage years.', 3, 6, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(7, 'I’ve noticed that my periods get irregular when I’m really stressed. It’s definitely linked to my stress levels, and I try to focus on relaxation techniques like yoga and breathing exercises.', 4, 2, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(8, 'Chronic stress can also lead to more severe reproductive issues like PCOS. It’s really important to manage stress for overall health.', 4, 3, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(9, 'I agree. I’ve been practicing mindfulness and meditation, which helps me manage stress and keep my cycle regular.', 4, 4, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(10, 'I’ve heard that folic acid and vitamin D are really important for fertility. You should also focus on eating a lot of whole foods like fruits, vegetables, and lean proteins.', 5, 5, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(11, 'Zinc and iron are also important for fertility. I try to eat foods rich in these nutrients like spinach, eggs, and seafood.', 5, 6, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(12, 'In addition to nutrition, maintaining a healthy weight is key. Being either underweight or overweight can cause hormonal imbalances that affect fertility.', 5, 7, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(13, 'I’ve been on birth control for years, and I’m worried about what might happen when I stop using it. I’ve heard it can take a while to get pregnant afterward.', 6, 1, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(14, 'It’s true that it can take time for your body to adjust, but many women get pregnant soon after stopping. It depends on the type of birth control and individual health factors.', 6, 2, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(15, 'It’s also important to note that birth control can regulate cycles and help with conditions like acne and endometriosis. But always discuss with a doctor before making any changes.', 6, 4, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(16, 'I’ve tried ginger tea and it works wonders for my cramps. It has natural anti-inflammatory properties.', 7, 3, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(17, 'Heat pads and yoga stretches really help me. Also, magnesium supplements have made a huge difference in reducing cramps.', 7, 5, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(18, 'I’ve used acupuncture for menstrual pain, and it really worked for me. It’s worth trying if you’re looking for a natural solution.', 7, 7, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(19, 'It’s so tough. I’ve been trying for years, and it’s really hard not to feel hopeless sometimes. Therapy has helped me a lot.', 8, 6, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(20, 'I agree. Support groups can also be a great resource. Hearing other people’s stories helps you feel less alone.', 8, 7, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(21, 'Sometimes it’s hard to explain how you feel to others who aren’t going through it, but it’s important to seek support. You shouldn’t go through it alone.', 8, 2, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(22, 'It’s important to track your cycle to identify your fertility window. Ovulation typically occurs around the middle of your cycle, so that’s the best time to try to conceive.', 9, 4, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(23, 'I use an app to track my cycles, and it really helps me understand my fertility window. It’s a game changer for trying to conceive.', 9, 5, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(24, 'It’s amazing how much the menstrual cycle affects everything. It’s not just about ovulation, but also about hormonal health in general.', 9, 6, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(25, 'Start by being honest about your concerns. It’s better to have the conversation sooner than later so you’re both on the same page.', 10, 1, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(26, 'It can be tough, but I think the key is making sure your partner knows that it’s not about blaming them—fertility issues can be complex and involve both partners.', 10, 2, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(27, 'It’s also helpful to approach the conversation with empathy. Fertility struggles can affect both people in different ways, so be supportive.', 10, 3, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(28, 'hi', 3, 51, '2024-12-28 02:01:26', '2024-12-28 02:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Mrw84y0C8fHVjGsdESZYApQx3Sx0sWomHOiJlcEq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUMxNGtYdzNzdEJ2eXFyM0ltOUxVQUVpN1F5TjBBdjUxYTBhdFpCRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3J1bS9jcmVhdGUiO319', 1735376807);

-- --------------------------------------------------------

--
-- Table structure for table `spotlights`
--

CREATE TABLE `spotlights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `title`, `content`, `likes_count`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Understanding Common Reproductive Diseases: Symptoms and Prevention', 'Let’s discuss common reproductive diseases like endometriosis, PCOS, and STIs. Share your knowledge, symptoms to watch for, and prevention tips to help others stay informed and proactive!', 0, 1, '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(2, 'Understanding Common Reproductive Diseases: Symptoms and Prevention', 'Let’s discuss common reproductive diseases like endometriosis, PCOS, and STIs. Share your knowledge, symptoms to watch for, and prevention tips to help others stay informed and proactive!', 0, 1, '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(3, 'Debunking Myths About Reproductive Diseases', 'Misconceptions about reproductive diseases often lead to stigma and misinformation. For example, conditions like infertility aren’t always a \"women-only\" issue, and STIs can affect anyone, regardless of lifestyle. Let’s shed light on the facts, challenge outdated beliefs, and promote better understanding of reproductive health.', 0, 5, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(4, 'How Stress Affects Reproductive Health', 'We often hear about how stress can affect our general well-being, but what about reproductive health? Stress can cause hormonal imbalances and disrupt menstrual cycles. Let’s share experiences and tips on managing stress for better reproductive health.', 0, 2, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(5, 'Nutrition and Fertility: What You Should Know', 'A healthy diet plays a huge role in fertility. From maintaining a healthy weight to balancing hormones, what foods should we eat to boost fertility? Let’s discuss the best nutrients for reproductive health.', 0, 6, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(6, 'The Impact of Birth Control on Long-Term Reproductive Health', 'How does long-term use of birth control affect reproductive health? Let’s discuss potential risks, benefits, and how it impacts fertility once you stop using it.', 0, 4, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(7, 'Exploring Natural Remedies for Menstrual Pain Relief', 'Menstrual cramps can be a significant discomfort. While over-the-counter medication is often used, natural remedies like herbal teas, heat therapy, and acupuncture may provide relief. Let’s talk about what works for you.', 0, 7, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(8, 'The Psychological Effects of Infertility', 'Infertility can have profound psychological effects, causing feelings of isolation, stress, and even depression. Let’s share experiences and ways to cope with the emotional impact of infertility.', 0, 3, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(9, 'Understanding the Menstrual Cycle and Fertility Window', 'Many people don’t fully understand the menstrual cycle and how it relates to fertility. Let’s break down the cycle and talk about when is the best time for conception.', 0, 9, '2024-12-27 13:18:00', '2024-12-27 13:18:00'),
(10, 'How to Talk to Your Partner About Fertility Concerns', 'Discussing fertility with your partner can be difficult but it’s crucial for a healthy relationship. Let’s share tips for initiating the conversation and approaching the topic with sensitivity.', 0, 10, '2024-12-27 13:18:00', '2024-12-27 13:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dale Bernier', 'elsie.jacobi@example.com', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'HvjCB0btfu', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(2, 'Myriam Marvin V', 'alexa.schinner@example.net', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'JH7dQbg46J', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(3, 'Kailee Schinner', 'runolfsdottir.jalyn@example.net', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'Z7QF91LIjP', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(4, 'Braxton Muller', 'asha81@example.org', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'd0FOBvHfa0', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(5, 'Hadley Gislason', 'natalia.denesik@example.org', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'oG0c9Vp0DA', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(6, 'Ms. Aliza Kirlin Sr.', 'mclaughlin.brooks@example.com', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'CW3cgg8XPy', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(7, 'Prof. Lysanne Hagenes MD', 'nelle.kovacek@example.com', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'x8IrVsE41k', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(8, 'Ms. Alivia Torp Jr.', 'king.molly@example.net', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'r2qDED7GrN', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(9, 'Oral Streich', 'arnoldo15@example.com', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', 'UGwukW3Sb5', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(10, 'Greg Hermiston', 'nkoepp@example.org', '2024-12-27 13:08:59', '$2y$12$q2k8PB4VF4AW6iB.ZhiIguhMHoq9ycfOuSi.N3Euaat848jWOQN72', '7GKoF3YLpx', '2024-12-27 13:08:59', '2024-12-27 13:08:59'),
(11, 'Philip Johnston Sr.', 'marilyne55@example.com', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'skmEHdLuQG', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(12, 'Leann Ruecker DVM', 'schinner.herminia@example.net', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'b2uQvrYpNA', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(13, 'Mr. Jarod Barton', 'harmony.schroeder@example.net', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'O4C4ZOCbxc', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(14, 'Mrs. Shyanne Hane II', 'zmedhurst@example.com', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', '5R1fSb9kqr', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(15, 'Ed Gislason', 'anahi.jacobson@example.org', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'OsERGbc9LW', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(16, 'Lavonne Feeney DDS', 'madison40@example.org', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'q6XMwj37S7', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(17, 'Miss Vida Cummerata DVM', 'sunny.bins@example.net', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'HCRI3dxK0o', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(18, 'Clint Abshire', 'germaine.turner@example.org', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'tJy5o4ZDGE', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(19, 'Dr. Junior Toy Jr.', 'yhegmann@example.com', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'ZaSnQrlQfT', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(20, 'Prof. Eloisa Schultz MD', 'else06@example.net', '2024-12-27 13:15:11', '$2y$12$8zwKgLY2OXJbVcvr4b/1HuR0YeBabkyfUQdSQ4IjR/7HwJOOL3moy', 'VbdKkPjGL9', '2024-12-27 13:15:11', '2024-12-27 13:15:11'),
(21, 'Dr. Dawson Kuhlman V', 'christop58@example.org', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'iHC7J3k92j', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(22, 'Kobe Kris', 'samson.funk@example.org', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'iNgtR68PDx', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(23, 'Astrid Koepp Sr.', 'cormier.clifton@example.net', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'FZ7LDCRB0T', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(24, 'Brenda Prohaska', 'merle54@example.net', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'Jqgejy1ITH', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(25, 'Savannah Sauer', 'mekhi.legros@example.org', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'cuiXBvlZqS', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(26, 'Tracey Torphy', 'moore.dax@example.org', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'GUzMyYS4Sp', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(27, 'Verda Wunsch DVM', 'lexus.stoltenberg@example.org', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'xhVXWBB1DB', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(28, 'Parker Schinner', 'predovic.alec@example.com', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'X9f7c3OF1E', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(29, 'Karianne Franecki III', 'saltenwerth@example.net', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'gpkRhWkM7u', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(30, 'Jadon Buckridge', 'robel.peggie@example.com', '2024-12-27 13:15:28', '$2y$12$Chb14k4ZGfS3f61Xvz5iPeoZSzl.6qbzW2aSIgLt96lNvGkvHth5S', 'TpNx0NTUyj', '2024-12-27 13:15:28', '2024-12-27 13:15:28'),
(31, 'Dr. Matilda McClure', 'becker.serenity@example.org', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'xTGe3sZe7F', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(32, 'Rahul Lakin', 'raynor.cornell@example.net', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'mfMDTvk4po', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(33, 'Miss Candace Daugherty', 'willms.april@example.net', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'VvNncREWmL', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(34, 'Haskell Rowe', 'ryder63@example.net', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'GZkVD5tcFf', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(35, 'Ashlee Johns', 'milan81@example.com', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', '6Wzmew8ftl', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(36, 'Reyna Keebler', 'hermina.smith@example.net', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'iyTEuWZhcY', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(37, 'Mr. Stanton Haag V', 'ladarius.mohr@example.net', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', '632Lap3JrY', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(38, 'Miss Sophie Ferry V', 'kshlerin.mallie@example.com', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'Les97QcUvY', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(39, 'Charlene Gibson', 'steuber.brendan@example.org', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'z2K8u4ZEbB', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(40, 'Dr. Fern Turner', 'klein.adrianna@example.com', '2024-12-27 13:17:59', '$2y$12$wfWolAUG0tJJmRi2OeH9pe38pM.vDICqrTK59DHMYjWU2jfA1Q07S', 'T2e5KBXWfa', '2024-12-27 13:17:59', '2024-12-27 13:17:59'),
(41, 'Mr. Eduardo Kunze', 'dicki.scarlett@example.org', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'aOL1ZNSbFe', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(42, 'Vladimir Beer', 'crona.laney@example.net', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', '7Uf8WeAvAq', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(43, 'Colt Will', 'hickle.maynard@example.org', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'Gg308iJiHF', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(44, 'Dino Cruickshank Sr.', 'yasmeen19@example.com', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'f8wR1mloLp', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(45, 'Imani Thiel', 'ceasar53@example.net', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'oQ8nmQ9gJ3', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(46, 'Berenice Russel', 'lowe.lauryn@example.net', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'kTK6pkRDSB', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(47, 'Mitchell Zboncak', 'lottie83@example.net', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'ljsXKVvFQC', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(48, 'Gavin Schuppe', 'rohan.dortha@example.org', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'wtisg0sNaO', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(49, 'Jeffrey Prohaska', 'bode.hailie@example.org', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'Ba1NpU7ZWh', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(50, 'Ruth Farrell', 'jake.zulauf@example.org', '2024-12-27 13:21:03', '$2y$12$gqVre/5v2YRcvcZvuJ2i.eETxjRVm.NmUJBjOB4NZlYAvQw27fT.q', 'L5QTVVL71X', '2024-12-27 13:21:03', '2024-12-27 13:21:03'),
(51, 'trial', 'trial@gmail.com', NULL, '$2y$12$EXIrPgVf80xeMum3S6iIWuaZMBzbb0tSlQ2JBboZFaMGabBpqSkq2', NULL, '2024-12-28 01:01:54', '2024-12-28 01:01:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_thread_id_foreign` (`thread_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `spotlights`
--
ALTER TABLE `spotlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `spotlights`
--
ALTER TABLE `spotlights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
