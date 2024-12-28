<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ForumSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $threads = [
            [
                'title' => 'Understanding Common Reproductive Diseases: Symptoms and Prevention',
                'content' => 'Let’s discuss common reproductive diseases like endometriosis, PCOS, and STIs. Share your knowledge, symptoms to watch for, and prevention tips to help others stay informed and proactive!',
                'user_id' => 1,
                'replies' => [
                    [
                        'user_id' => 1,
                        'content' => 'I had a friend with endometriosis, and it was really tough for her to get a diagnosis. The symptoms can be really hard to distinguish from other things, so always get a second opinion if needed.'
                    ],
                    [
                        'user_id' => 2,
                        'content' => 'PCOS is another common issue. It’s important to focus on managing it early on because it can lead to fertility problems if left untreated.',

                    ],
                    [
                        'user_id' => 3,
                        'content' => 'For STIs, regular check-ups and safe sex practices are key. Sometimes symptoms aren’t obvious, so it’s always a good idea to get tested regularly.',

                    ]
                ]
            ],
            [
                'title' => 'Debunking Myths About Reproductive Diseases',
                'content' => 'Misconceptions about reproductive diseases often lead to stigma and misinformation. For example, conditions like infertility aren’t always a "women-only" issue, and STIs can affect anyone, regardless of lifestyle. Let’s shed light on the facts, challenge outdated beliefs, and promote better understanding of reproductive health.',
                'user_id' => 5,
                'replies' => [
                    [
                        'user_id' => 4,
                        'content' => 'I think one of the biggest myths is that infertility is always related to women. Men can have infertility issues as well, but it’s often overlooked.',

                    ],
                    [
                        'user_id' => 5,
                        'content' => 'Definitely! And people often think that STIs are only a concern for people who are promiscuous. But anyone can get one, and it’s important to get tested if you’re sexually active.',

                    ],
                    [
                        'user_id' => 6,
                        'content' => 'Another myth is that endometriosis only affects older women, but it can also affect younger women, sometimes even during their teenage years.',

                    ]
                ]
            ],
            [
                'title' => 'How Stress Affects Reproductive Health',
                'content' => 'We often hear about how stress can affect our general well-being, but what about reproductive health? Stress can cause hormonal imbalances and disrupt menstrual cycles. Let’s share experiences and tips on managing stress for better reproductive health.',
                'user_id' => 2,
                'replies' => [
                    [
                        'user_id' => 2,
                        'content' => 'I’ve noticed that my periods get irregular when I’m really stressed. It’s definitely linked to my stress levels, and I try to focus on relaxation techniques like yoga and breathing exercises.',

                    ],
                    [
                        'user_id' => 3,
                        'content' => 'Chronic stress can also lead to more severe reproductive issues like PCOS. It’s really important to manage stress for overall health.',

                    ],
                    [
                        'user_id' => 4,
                        'content' => 'I agree. I’ve been practicing mindfulness and meditation, which helps me manage stress and keep my cycle regular.',

                    ]
                ]
            ],
            [
                'title' => 'Nutrition and Fertility: What You Should Know',
                'content' => 'A healthy diet plays a huge role in fertility. From maintaining a healthy weight to balancing hormones, what foods should we eat to boost fertility? Let’s discuss the best nutrients for reproductive health.',
                'user_id' => 6,
                'replies' => [
                    [
                        'user_id' => 5,
                        'content' => 'I’ve heard that folic acid and vitamin D are really important for fertility. You should also focus on eating a lot of whole foods like fruits, vegetables, and lean proteins.',

                    ],
                    [
                        'user_id' => 6,
                        'content' => 'Zinc and iron are also important for fertility. I try to eat foods rich in these nutrients like spinach, eggs, and seafood.',

                    ],
                    [
                        'user_id' => 7,
                        'content' => 'In addition to nutrition, maintaining a healthy weight is key. Being either underweight or overweight can cause hormonal imbalances that affect fertility.',

                    ]
                ]
            ],
            [
                'title' => 'The Impact of Birth Control on Long-Term Reproductive Health',
                'content' => 'How does long-term use of birth control affect reproductive health? Let’s discuss potential risks, benefits, and how it impacts fertility once you stop using it.',
                'user_id' => 4,
                'replies' => [
                    [
                        'user_id' => 1,
                        'content' => 'I’ve been on birth control for years, and I’m worried about what might happen when I stop using it. I’ve heard it can take a while to get pregnant afterward.',

                    ],
                    [
                        'user_id' => 2,
                        'content' => 'It’s true that it can take time for your body to adjust, but many women get pregnant soon after stopping. It depends on the type of birth control and individual health factors.',

                    ],
                    [
                        'user_id' => 4,
                        'content' => 'It’s also important to note that birth control can regulate cycles and help with conditions like acne and endometriosis. But always discuss with a doctor before making any changes.',

                    ]
                ]
            ],
            [
                'title' => 'Exploring Natural Remedies for Menstrual Pain Relief',
                'content' => 'Menstrual cramps can be a significant discomfort. While over-the-counter medication is often used, natural remedies like herbal teas, heat therapy, and acupuncture may provide relief. Let’s talk about what works for you.',
                'user_id' => 7,
                'replies' => [
                    [
                        'user_id' => 3,
                        'content' => 'I’ve tried ginger tea and it works wonders for my cramps. It has natural anti-inflammatory properties.',

                    ],
                    [
                        'user_id' => 5,
                        'content' => 'Heat pads and yoga stretches really help me. Also, magnesium supplements have made a huge difference in reducing cramps.',

                    ],
                    [
                        'user_id' => 7,
                        'content' => 'I’ve used acupuncture for menstrual pain, and it really worked for me. It’s worth trying if you’re looking for a natural solution.',

                    ]
                ]
            ],
            [
                'title' => 'The Psychological Effects of Infertility',
                'content' => 'Infertility can have profound psychological effects, causing feelings of isolation, stress, and even depression. Let’s share experiences and ways to cope with the emotional impact of infertility.',
                'user_id' => 3,
                'replies' => [
                    [
                        'user_id' => 6,
                        'content' => 'It’s so tough. I’ve been trying for years, and it’s really hard not to feel hopeless sometimes. Therapy has helped me a lot.',

                    ],
                    [
                        'user_id' => 7,
                        'content' => 'I agree. Support groups can also be a great resource. Hearing other people’s stories helps you feel less alone.',

                    ],
                    [
                        'user_id' => 2,
                        'content' => 'Sometimes it’s hard to explain how you feel to others who aren’t going through it, but it’s important to seek support. You shouldn’t go through it alone.',

                    ]
                ]
            ],
            [
                'title' => 'Understanding the Menstrual Cycle and Fertility Window',
                'content' => 'Many people don’t fully understand the menstrual cycle and how it relates to fertility. Let’s break down the cycle and talk about when is the best time for conception.',
                'user_id' => 9,
                'replies' => [
                    [
                        'user_id' => 4,
                        'content' => 'It’s important to track your cycle to identify your fertility window. Ovulation typically occurs around the middle of your cycle, so that’s the best time to try to conceive.',

                    ],
                    [
                        'user_id' => 5,
                        'content' => 'I use an app to track my cycles, and it really helps me understand my fertility window. It’s a game changer for trying to conceive.',

                    ],
                    [
                        'user_id' => 6,
                        'content' => 'It’s amazing how much the menstrual cycle affects everything. It’s not just about ovulation, but also about hormonal health in general.',

                    ]
                ]
            ],
            [
                'title' => 'How to Talk to Your Partner About Fertility Concerns',
                'content' => 'Discussing fertility with your partner can be difficult but it’s crucial for a healthy relationship. Let’s share tips for initiating the conversation and approaching the topic with sensitivity.',
                'user_id' => 10,
                'replies' => [
                    [
                        'user_id' => 1,
                        'content' => 'Start by being honest about your concerns. It’s better to have the conversation sooner than later so you’re both on the same page.',

                    ],
                    [
                        'user_id' => 2,
                        'content' => 'It can be tough, but I think the key is making sure your partner knows that it’s not about blaming them—fertility issues can be complex and involve both partners.',

                    ],
                    [
                        'user_id' => 3,
                        'content' => 'It’s also helpful to approach the conversation with empathy. Fertility struggles can affect both people in different ways, so be supportive.',
                    ]
                ]
            ]
        ];

        foreach ($threads as $thread) {
            // Insert the thread
            $threadId = DB::table('threads')->insertGetId([
                'title' => $thread['title'],
                'content' => $thread['content'],
                'user_id' => $thread['user_id'],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);

            // Insert the replies
            foreach ($thread['replies'] as $reply) {
                DB::table('replies')->insert([
                    'content' => $reply['content'],
                    'thread_id' => $threadId,
                    'user_id' => $reply['user_id'],
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ]);
            }
        }
    }
}
