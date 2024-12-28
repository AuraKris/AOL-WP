<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $newsArticles = [
            [
                'title' => '4 or 5-minute bouts of intense exercise may slash cardiovascular risk',
                'author' => 'John Doe',
                'content' => 'Recent research suggests that short bursts of intense physical activity lasting just four to five minutes may significantly reduce the risk of cardiovascular disease. These brief but vigorous exercise sessions, often called "exercise snacks," improve heart health by enhancing blood flow, reducing blood pressure, and increasing oxygen uptake. Activities such as brisk cycling, fast running, or high-energy aerobic exercises are particularly effective for achieving these benefits.

                High-intensity exercise offers a time-efficient way to improve markers of heart health, delivering results comparable to longer, moderate workouts. Incorporating these short, intense bouts into your daily routine can be as simple as performing a few minutes of sprinting, jumping jacks, or cycling. However, individuals with pre-existing health conditions should consult a healthcare professional before starting such routines. Embracing these quick bursts of activity can help pave the way to a healthier heart and a longer life.

                Moreover, these exercises can be particularly beneficial for individuals with busy schedules, allowing them to prioritize health without dedicating significant time. Even climbing stairs or short, fast-paced walks during breaks can provide similar benefits when performed with intensity. Such activities are accessible and adaptable, making them suitable for a wide range of fitness levels.',
                'image' => 'https://example.com/images/intense-exercise.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Benefits of a Plant-Based Diet for Heart Health',
                'author' => 'Jane Smith',
                'content' => 'A plant-based diet, rich in fruits, vegetables, whole grains, nuts, and seeds, has been shown to significantly improve heart health by reducing the risk of cardiovascular disease. This diet is packed with antioxidants, fiber, and healthy fats, all of which contribute to lower cholesterol levels, reduced blood pressure, and better overall heart function.

                Studies have found that individuals who follow a plant-based diet tend to have lower rates of heart disease compared to those who consume diets high in animal products. The high levels of fiber in plant-based foods help reduce LDL cholesterol, while the healthy fats found in nuts, seeds, and plant oils can increase HDL cholesterol, further promoting cardiovascular health.

                The plant-based diet is not only heart-healthy but also contributes to weight loss and improved blood sugar control, both of which are essential for preventing or managing heart disease. Additionally, this dietary approach is often lower in calories and saturated fats, which helps reduce inflammation in the body, a key factor in heart disease development.

                Adopting a plant-based diet can be easier than one might think, with a variety of delicious recipes available that replace meat and dairy with plant-based alternatives like legumes, tofu, and whole grains. By incorporating more plant-based foods into your meals, you can enjoy a variety of health benefits while protecting your heart from disease.',
                'image' => 'https://example.com/images/plant-based-diet.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Breaking Down the Impact of Stress on Heart Health',
                'author' => 'Mike Johnson',
                'content' => 'Chronic stress has long been linked to an increased risk of cardiovascular disease, with studies showing that people under constant stress are more likely to experience heart-related issues, including heart attacks and strokes. When the body experiences stress, it produces stress hormones like cortisol and adrenaline, which elevate heart rate and blood pressure, placing extra strain on the heart.

                Over time, prolonged stress can lead to inflammation, increased clotting factors in the blood, and changes in blood vessels that contribute to the development of heart disease. Moreover, stress often leads to unhealthy behaviors such as overeating, smoking, or lack of exercise, further increasing the risk of cardiovascular issues.

                Managing stress is a key component of maintaining heart health. Practices such as mindfulness meditation, yoga, and deep breathing exercises can help activate the body’s relaxation response, reducing the production of stress hormones and allowing the heart to recover. Regular physical activity, healthy eating, and proper sleep hygiene are also essential for managing stress levels effectively.

                By addressing the root causes of stress and adopting healthier coping mechanisms, individuals can significantly reduce the risk of developing heart disease and improve their overall well-being.',
                'image' => 'https://example.com/images/stress-heart-health.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Role of Sleep in Cardiovascular Health',
                'author' => 'Anna Lee',
                'content' => 'A good night’s sleep plays a vital role in maintaining heart health. Chronic sleep deprivation has been shown to increase the risk of cardiovascular diseases, including hypertension, heart attack, and stroke. During sleep, the body undergoes essential processes such as lowering blood pressure, reducing heart rate, and repairing blood vessels.

                Studies have shown that individuals who consistently sleep less than six hours per night are at a higher risk for developing heart disease. Sleep deprivation leads to elevated stress hormones, increased inflammation, and disturbed metabolic function, all of which contribute to the development of cardiovascular issues.

                Quality sleep is important for regulating blood pressure, reducing inflammation, and balancing cholesterol levels. Experts recommend aiming for 7-9 hours of sleep per night to support overall heart health. In addition to proper sleep, maintaining a consistent sleep schedule and creating a relaxing bedtime routine can improve sleep quality and contribute to long-term heart health.

                Individuals who struggle with sleep disorders, such as sleep apnea, should seek medical treatment to prevent complications related to cardiovascular health. Simple changes, like reducing screen time before bed and practicing relaxation techniques, can make a significant difference in both sleep quality and heart health.',
                'image' => 'https://example.com/images/sleep-health.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Exercise and its Positive Effects on Blood Pressure',
                'author' => 'Robert Smith',
                'content' => 'Regular physical activity is one of the most effective ways to manage and reduce high blood pressure. Engaging in aerobic exercises such as walking, jogging, cycling, or swimming can help lower systolic and diastolic blood pressure readings, which significantly reduces the risk of heart disease and stroke.

                Studies have found that consistent exercise strengthens the heart, allowing it to pump blood more efficiently and reducing the strain on the arteries. In addition to aerobic activity, strength training exercises, such as lifting weights, can also contribute to better blood pressure management by increasing muscle mass and improving metabolic function.

                For individuals with high blood pressure, even moderate amounts of exercise, such as 30 minutes of brisk walking per day, can make a noticeable difference. In combination with a healthy diet and weight management, regular physical activity is a cornerstone of managing hypertension and promoting cardiovascular health.

                It’s important to note that before beginning an exercise regimen, individuals with hypertension or other cardiovascular conditions should consult with a healthcare provider to ensure the chosen exercises are safe and effective for their specific needs.',
                'image' => 'https://example.com/images/exercise-blood-pressure.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'How Stress Management Can Improve Your Heart Health',
                'author' => 'Laura Green',
                'content' => 'Chronic stress is one of the leading contributors to heart disease, but managing stress can lead to significant improvements in cardiovascular health. Techniques such as mindfulness, yoga, meditation, and deep breathing exercises can help reduce the levels of stress hormones in the body, which in turn lowers blood pressure and heart rate.

                When individuals experience stress, their bodies enter a “fight or flight” mode, causing increased blood pressure, faster heart rate, and inflammation. Over time, these effects can lead to the development of plaque in the arteries, increasing the risk of a heart attack or stroke. However, by practicing stress-reducing techniques, individuals can reverse this effect and improve heart health.

                Regularly practicing relaxation techniques also helps reduce anxiety and depression, which are linked to an increased risk of cardiovascular problems. Additionally, physical activities like walking or gentle stretching help release built-up tension in the body and promote relaxation, further benefiting heart health.

                Adopting a holistic approach to managing stress can have a profound impact on cardiovascular health, reducing the risk of heart disease and promoting a better quality of life.',
                'image' => 'https://example.com/images/stress-management.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Link Between High Cholesterol and Heart Disease',
                'author' => 'Ellen Parker',
                'content' => 'High cholesterol is one of the leading risk factors for cardiovascular diseases, including heart attacks and strokes. Cholesterol, a fatty substance in the blood, can build up on the walls of the arteries, forming plaques that narrow and harden the blood vessels, reducing blood flow to vital organs. This condition, called atherosclerosis, increases the risk of heart disease.

                There are two types of cholesterol: low-density lipoprotein (LDL), often referred to as "bad" cholesterol, and high-density lipoprotein (HDL), known as "good" cholesterol. Elevated levels of LDL cholesterol contribute to plaque formation, while higher levels of HDL cholesterol help remove excess cholesterol from the bloodstream.

                Managing cholesterol levels through diet, exercise, and medication can significantly reduce the risk of heart disease. Eating a diet rich in fiber, fruits, vegetables, and healthy fats can help lower LDL cholesterol, while regular physical activity can raise HDL cholesterol levels. For individuals with high cholesterol, doctors may prescribe statins or other medications to lower LDL levels and protect heart health.',
                'image' => 'https://example.com/images/high-cholesterol.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Importance of Hydration for Cardiovascular Health',
                'author' => 'Tom Harris',
                'content' => 'Proper hydration is essential for maintaining good cardiovascular health. Water helps maintain the volume of blood circulating through the body, allowing the heart to pump blood efficiently. Dehydration, even mild, can lead to a decrease in blood volume, causing the heart to work harder to supply oxygen and nutrients to vital organs.

                Studies have shown that dehydration can increase the risk of developing hypertension, a condition where blood pressure levels become dangerously high. When the body is dehydrated, blood vessels constrict, making it harder for blood to flow smoothly, which can increase the strain on the heart.

                To maintain healthy hydration levels, it’s important to drink enough water throughout the day, especially during physical activity or hot weather. Aim to drink at least 8 cups (64 ounces) of water per day, or more depending on individual needs, such as exercise intensity and climate conditions. In addition to water, hydrating foods like fruits and vegetables can also help replenish fluids and maintain heart health.',
                'image' => 'https://example.com/images/hydration-heart-health.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Role of Omega-3 Fatty Acids in Preventing Heart Disease',
                'author' => 'Sophia Davis',
                'content' => 'Omega-3 fatty acids, essential fats found in certain foods, play a significant role in preventing heart disease. These healthy fats help reduce inflammation in the body, lower blood pressure, and decrease triglyceride levels, all of which contribute to better cardiovascular health.

                Studies have shown that omega-3s can help prevent the buildup of plaque in the arteries, a condition known as atherosclerosis, which leads to heart attacks and strokes. Omega-3 fatty acids also support healthy heart rhythms and can reduce the risk of arrhythmias, which are irregular heartbeats that can be life-threatening.

                Omega-3 fatty acids are found in foods such as fatty fish (salmon, mackerel, sardines), flaxseeds, chia seeds, walnuts, and fortified products like eggs and dairy. For those who do not consume enough omega-3-rich foods, supplements like fish oil can be an effective alternative.

                Incorporating omega-3-rich foods into your diet, along with other heart-healthy habits like regular exercise and a balanced diet, can significantly improve heart health and lower the risk of cardiovascular diseases.',
                'image' => 'https://example.com/images/omega-3-fatty-acids.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Impact of Smoking on Cardiovascular Health',
                'author' => 'John Lee',
                'content' => 'Smoking is one of the leading preventable causes of cardiovascular disease, including heart attacks, strokes, and peripheral artery disease. The chemicals in tobacco smoke damage the blood vessels, increasing the risk of atherosclerosis, a condition where plaque builds up in the arteries, restricting blood flow to vital organs.

                Smoking also increases the levels of "bad" LDL cholesterol and decreases the levels of "good" HDL cholesterol, further contributing to the development of heart disease. The nicotine in cigarettes raises heart rate and blood pressure, putting additional strain on the cardiovascular system.

                Quitting smoking is the most important step individuals can take to improve heart health. Within just a few weeks of quitting, blood pressure and heart rate begin to return to normal, and within a year, the risk of heart disease is halved compared to that of a smoker. Support from healthcare providers, smoking cessation programs, and lifestyle changes such as regular exercise and a balanced diet can help individuals successfully quit smoking and protect their heart health.',
                'image' => 'https://example.com/images/smoking-heart-disease.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'How Meditation Reduces the Risk of Heart Disease',
                'author' => 'Clara Roberts',
                'content' => 'Meditation, a practice of focused attention and mindfulness, has been shown to reduce stress, lower blood pressure, and improve overall heart health. Research indicates that regular meditation can help calm the nervous system, lower the production of stress hormones like cortisol, and reduce inflammation in the body—all of which contribute to a healthier heart.

                Meditation techniques such as deep breathing, guided imagery, and mindfulness can help lower blood pressure by inducing the relaxation response in the body. This effect helps reduce the strain on the cardiovascular system, potentially lowering the risk of hypertension, heart disease, and stroke.

                Studies have also found that meditation can help improve emotional well-being, reduce anxiety, and prevent depression, all of which are linked to better heart health. Whether practiced for just a few minutes each day or incorporated into a longer routine, meditation is a simple yet powerful tool to enhance cardiovascular health.

                For individuals looking to protect their heart health, incorporating meditation into daily life, alongside other healthy habits like regular exercise and a balanced diet, can lead to long-term improvements in overall well-being.',
                'image' => 'https://example.com/images/meditation-heart-health.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Effects of Air Pollution on Heart Disease',
                'author' => 'Michael Black',
                'content' => 'Air pollution, particularly fine particulate matter (PM2.5), has been linked to an increased risk of cardiovascular diseases. Exposure to polluted air can cause inflammation and oxidative stress, which damage the blood vessels and contribute to the development of heart disease. Long-term exposure to air pollution is associated with an increased risk of heart attacks, strokes, and other cardiovascular events.

                Studies have shown that individuals living in areas with high levels of air pollution are more likely to develop hypertension, atherosclerosis, and other heart-related conditions. Fine particulate matter from car exhaust, industrial emissions, and other sources can enter the bloodstream, causing damage to the endothelial cells lining the blood vessels and impairing their ability to regulate blood flow.

                Reducing exposure to air pollution is crucial for maintaining heart health. Measures such as staying indoors during high pollution days, using air purifiers, and avoiding areas with heavy traffic can help minimize exposure. Additionally, individuals with existing heart conditions should take extra precautions to limit their exposure to polluted air.

                On a larger scale, policies aimed at reducing air pollution, such as stricter emissions regulations and the promotion of clean energy, can have a significant impact on public health, particularly in reducing the burden of cardiovascular diseases.',
                'image' => 'https://example.com/images/air-pollution-heart-disease.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'How Diabetes Affects Your Heart Health',
                'author' => 'James Wilson',
                'content' => 'Diabetes is a major risk factor for heart disease. Individuals with diabetes are more likely to develop high blood pressure, high cholesterol, and atherosclerosis, all of which increase the risk of heart attacks and strokes. High blood sugar levels can damage blood vessels over time, leading to poor circulation and reduced oxygen flow to vital organs.

                Poorly managed diabetes can lead to an increased risk of heart failure, a condition where the heart is unable to pump blood effectively, and peripheral artery disease, which reduces blood flow to the limbs. In fact, diabetes is one of the leading causes of heart disease, and individuals with diabetes are twice as likely to experience cardiovascular problems compared to those without the condition.

                Managing blood sugar levels through a combination of diet, exercise, and medication is essential for protecting heart health. Eating a balanced diet rich in fiber, whole grains, and healthy fats, along with regular physical activity, can help improve insulin sensitivity and reduce the risk of heart disease. For individuals with diabetes, regular monitoring of blood sugar levels and working closely with healthcare providers to manage the condition is crucial.',
                'image' => 'https://example.com/images/diabetes-heart-disease.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        foreach ($newsArticles as $article) {
            DB::table('news')->insert([
                'title' => $article['title'],
                'author' => $article['author'],
                'content' => $article['content'],
                'image' => $article['image'],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
