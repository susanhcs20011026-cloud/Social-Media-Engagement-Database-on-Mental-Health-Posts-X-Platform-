PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS tone_category (
   tone_category_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO tone_category (tone_category_id, name) VALUES
(1, 'positive_style');

CREATE TABLE IF NOT EXISTS emotion_category (
   emotion_category_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO emotion_category (emotion_category_id, name) VALUES
(1, 'high_valence');

CREATE TABLE IF NOT EXISTS hashtag_category (
   hashtag_category_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO hashtag_category (hashtag_category_id, name) VALUES
(1, 'general');

CREATE TABLE IF NOT EXISTS image_group (
   image_group_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO image_group (image_group_id, name) VALUES
(1, 'textual-graphic');

CREATE TABLE IF NOT EXISTS post_type (
   post_type_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO post_type (post_type_id, name) VALUES
(1, 'text_post');

CREATE TABLE IF NOT EXISTS content_warning (
   content_warning_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO content_warning (content_warning_id, name) VALUES
(1, 'mentions_anxiety');



CREATE TABLE IF NOT EXISTS user_status (
   user_id INTEGER PRIMARY KEY,
   verified_status TEXT NOT NULL
);

INSERT INTO user_status (user_id, verified_status) VALUES
(1, 'yes'),
(2, 'no'),
(3, 'yes'),
(4, 'no'),
(5, 'yes'),
(6, 'no'),
(7, 'no'),
(8, 'yes'),
(9, 'yes'),
(10, 'yes'),
(11, 'yes'),
(12, 'yes'),
(13, 'yes'),
(14, 'no'),
(15, 'yes'),
(16, 'yes'),
(17, 'yes'),
(18, 'no');


CREATE TABLE IF NOT EXISTS tone (
   tone_id INTEGER PRIMARY KEY,
   tone_label TEXT NOT NULL,
   description TEXT NOT NULL
);

INSERT INTO tone (tone_id, tone_label, description) VALUES
(1, 'supportive', 'Encouraging, comforting, or offering emotional support'),
(2, 'educational', 'Providing psychological knowledge, explanations, or advice'),
(3, 'emotional', 'Expressing personal feelings, stress, or emotional struggles'),
(4, 'humorous', 'Using humor, irony, or meme-like expressions'),
(5, 'critical', 'Criticizing therapy, institutions, systems, or social issues');



CREATE TABLE IF NOT EXISTS emotion (
   emotion_id INTEGER PRIMARY KEY,
   label TEXT NOT NULL,
   valence INTEGER NOT NULL
);

INSERT INTO emotion (emotion_id, label, valence) VALUES
(1, 'positive', 1),
(2, 'neutral', 0),
(3, 'negative', -1);



CREATE TABLE IF NOT EXISTS engagement (
   engagement_id INTEGER PRIMARY KEY,
   post_id INTEGER NOT NULL,
   likes INTEGER,
   comments INTEGER,
   shares INTEGER
);

INSERT INTO engagement (engagement_id, post_id, likes, comments, shares) VALUES
(1, 1, 2100, 163, 355),
(2, 2, 581, 15, 57),
(3, 3, 608, 18, 120),
(4, 4, 365, 4, 320),
(5, 5, 4100, 13, 1700),
(6, 6, 33000, 91, 6900),
(7, 7, 330, 4, 87),
(8, 8, 728, 38, 11),
(9, 9, 412, 136, 260),
(10, 10, 54, 97, 44),
(11, 11, 24, 2, 1),
(12, 12, 21, 3, 6),
(13, 13, 54, 10, 1300),
(14, 14, 145, 5, 275),
(15, 15, 742, 69, 59),
(16, 16, 7100, 2, 44),
(17, 17, 1300, 2, 44),
(18, 18, 32000, 12, 5500);




CREATE TABLE IF NOT EXISTS hashtag (
   hashtag_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO hashtag (hashtag_id, name) VALUES
(1, 'letitgo'),
(2, 'HappinessCountdown'),
(3, 'Mindfulness');



CREATE TABLE IF NOT EXISTS image_type (
   image_type_id INTEGER PRIMARY KEY,
   category TEXT NOT NULL
);

INSERT INTO image_type (image_type_id, category) VALUES
(1, 'text_only'),
(2, 'selfie'),
(3, 'meme'),
(4, 'infographic'),
(5, 'stock_photo');


CREATE TABLE IF NOT EXISTS language (
   language_id INTEGER PRIMARY KEY,
   language TEXT NOT NULL
);

INSERT INTO language (language_id, language) VALUES
(1, 'English');



CREATE TABLE IF NOT EXISTS platform (
   platform_id INTEGER PRIMARY KEY,
   platform_name TEXT NOT NULL
);

INSERT INTO platform (platform_id, platform_name) VALUES
(1, 'X');



CREATE TABLE IF NOT EXISTS post_hashtag (
   post_id INTEGER NOT NULL,
   hashtag_id INTEGER NOT NULL
);

INSERT INTO post_hashtag (post_id, hashtag_id) VALUES
(13, 1),
(14, 2),
(14, 3);


CREATE TABLE IF NOT EXISTS keyword (
   keyword_id INTEGER PRIMARY KEY,
   keyword TEXT NOT NULL
);

INSERT INTO keyword (keyword_id, keyword) VALUES
(1, 'progress'),
(2, 'guide'),
(3, 'courage'),
(4, 'fear'),
(5, 'psychotherapy'),
(6, 'long-term therapy'),
(7, 'expiration'),
(8, 'vitamin_d3'),
(9, 'magnesium'),
(10, 'sleep'),
(11, 'tired'),
(12, 'exhaustion'),
(13, 'mind'),
(14, 'body'),
(15, 'rebuke'),
(16, 'shyness'),
(17, 'opportunities'),
(18, 'hinder'),
(19, 'social_anxiety'),
(20, 'judging'),
(21, 'awkward'),
(22, 'stress'),
(23, 'peace'),
(24, 'God'),
(25, 'violence'),
(26, 'emotional_abuse'),
(27, 'survivors'),
(28, 'mental_health'),
(29, 'ADHD'),
(30, 'autism'),
(31, 'over_diagnosis'),
(32, 'early_intervention'),
(33, 'supoort'),
(34, 'burnout'),
(35, 'isolation'),
(36, 'productity'),
(37, 'imposter_syndrome'),
(38, 'mindfulness'),
(39, 'acceptance'),
(40, 'reflection'),
(41, 'letting_go'),
(42, 'happiness'),
(43, 'compassion'),
(44, 'focus'),
(45, 'calm'),
(46, 'december'),
(47, 'money'),
(48, 'abundance'),
(49, 'confidence'),
(50, 'affirmation'),
(51, 'success'),
(52, 'healing'),
(53, 'standards'),
(54, 'toxicity'),
(55, 'boundaries'),
(56, 'fear'),
(57, 'failure'),
(58, 'worrying'),
(59, 'judgment'),
(60, 'believe'),
(61, 'dreams'),
(62, 'goals'),
(63, 'conquer'),
(64, 'jealous'),
(65, 'insecure'),
(66, 'emotional_regulation');



CREATE TABLE IF NOT EXISTS post (
   post_id INTEGER PRIMARY KEY,
   user_id INTEGER NOT NULL,
   text TEXT NOT NULL,
   tone_id INTEGER,
   emotion_id INTEGER,
   image_type_id INTEGER,
   likes INTEGER,
   comments INTEGER,
   reposts INTEGER,
   timestamp DATE
);

INSERT INTO post (post_id, user_id, text, tone_id, emotion_id, image_type_id, likes, comments, reposts, timestamp) VALUES
(1, 1, 'A prayer asking for guidance and courage.', 1, 1, 4, 2100, 163, 355, '2025-12-01'),
(2, 2, 'A quote discussing why people seek long-term dynamic psychotherapy and psychoanalysis.', 2, 0, 1, 581, 15, 57, '2025-11-25'),
(3, 3, 'A quote explaining the purpose of psychotherapy and its self-expiring nature', 2, 2, 1, 608, 18, 120, '2025-11-20'),
(4, 4, 'A post promoting Vitamin D3 and Magnesium for sleep, mood, and reduced anxiety', 2, 2, 5, 365, 4, 320, '2025-12-01'),
(5, 5, 'A post expressing exhaustion, hopelessness, and overwhelming emotional fatigue', 3, 3, 1, 4100, 13, 1700, '2025-11-30'),
(6, 6, 'A motivational post rejecting shyness and anxiety to embrace new opportunities.', 1, 1, 1, 33000, 91, 6900, '2025-11-27'),
(7, 7, 'A post describing social anxiety experiences...', 3, 3, 1, 330, 4, 87, '2025-11-28'),
(8, 8, 'A faith-based post warning about stress...', 1, 1, 4, 728, 38, 11, '2025-12-03'),
(9, 9, 'An educational post by WHO describing emotional abuse...', 2, 0, 5, 412, 136, 260, '2025-11-27'),
(10, 10, 'A news post announcing a government review...', 2, 0, 5, 54, 97, 44, '2025-12-04'),
(11, 11, 'A post advocating for early mental health intervention...', 2, 1, 1, 24, 2, 1, '2025-12-02'),
(12, 12, 'A post identifying common burnout culture signs...', 2, 3, 1, 21, 3, 6, '2025-11-28'),
(13, 13, 'A mindfulness quote encouraging letting go...', 1, 1, 4, 54, 10, 1300, '2025-12-06'),
(14, 14, 'A mindfulness quote about happiness...', 1, 1, 4, 145, 5, 275, '2025-12-03'),
(15, 15, 'A motivational affirmation post encouraging confidence...', 1, 1, 5, 742, 69, 59, '2025-12-05'),
(16, 16, 'A reflective post about healing and emotional boundaries...', 2, 1, 5, 7100, 2, 44, '2025-12-05'),
(17, 17, 'A motivational post encouraging readers...', 1, 1, 1, 1300, 2, 44, '2025-11-21'),
(18, 18, 'A post encouraging emotional regulation...', 1, 1, 4, 32000, 12, 5500, '2024-01-01');



CREATE TABLE IF NOT EXISTS post_keyword (
   post_id INTEGER NOT NULL,
   keyword_id INTEGER NOT NULL,
   PRIMARY KEY (post_id, keyword_id),
   FOREIGN KEY (post_id) REFERENCES post(post_id),
   FOREIGN KEY (keyword_id) REFERENCES keyword(keyword_id)
);

INSERT INTO post_keyword (post_id, keyword_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4),
(2, 5), (2, 6),
(3, 5), (3, 7),
(4, 8), (4, 9), (4, 10),
(5, 11), (5, 12), (5, 13), (5, 14),
(6, 15), (6, 16), (6, 17), (6, 18),
(7, 19), (7, 20), (7, 21),
(8, 22), (8, 23), (8, 24),
(9, 25), (9, 26), (9, 27), (9, 28),
(10, 28), (10, 29), (10, 30), (10, 31),
(11, 28), (11, 32), (11, 33),
(12, 22), (12, 34), (12, 35), (12, 36), (12, 37),
(13, 38), (13, 39), (13, 40), (13, 41),
(14, 38), (14, 42), (14, 43), (14, 44), (14, 45),
(15, 46), (15, 47), (15, 48), (15, 49), (15, 50), (15, 51),
(16, 42), (16, 43), (16, 45), (16, 39), (16, 38), (16, 52), (16, 53), (16, 54), (16, 55),
(17, 56), (17, 57), (17, 58), (17, 59), (17, 60), (17, 61), (17, 62), (17, 63),
(18, 64), (18, 65), (18, 66);
