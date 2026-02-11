-- ============================
-- Question#1:Which tone (supportive, educational, emotional, humorous, or critical) receive the highest engagements (likes, comments, and reposts) ?
-- ============================
SELECT t.tone_label,
       AVG(p.likes) AS avg_likes,
       AVG(p.comments) AS avg_comments,
       AVG(p.reposts) AS avg_reposts
FROM post p
JOIN tone t ON p.tone_id = t.tone_id
GROUP BY t.tone_label
ORDER BY avg_likes DESC;

-- ============================
-- Question#2:What visual elements (emojis, text-only, selfie, and Mean Memes) attract more likes or reposts?
-- ============================
SELECT it.category AS image_type,
       AVG(p.likes) AS avg_likes,
       AVG(p.reposts) AS avg_reposts
FROM post p
JOIN image_type it ON p.image_type_id = it.image_type_id
GROUP BY it.category
ORDER BY avg_likes DESC;

-- ============================
-- Question#3:How does the use of hashtags (e.g., #therapy, #selfcare) influence audience interaction?
-- ============================
SELECT 
    'Has Hashtag' AS hashtag_status,
    AVG(p.likes) AS avg_likes,
    AVG(p.reposts) AS avg_reposts
FROM post p
JOIN post_hashtag ph ON p.post_id = ph.post_id

UNION ALL

SELECT 
    'No Hashtag' AS hashtag_status,
    AVG(p.likes) AS avg_likes,
    AVG(p.reposts) AS avg_reposts
FROM post p
LEFT JOIN post_hashtag ph ON p.post_id = ph.post_id
WHERE ph.post_id IS NULL;


-- ============================
-- Question#4:Which keywords are more frequency?
-- ============================
SELECT k.keyword,
       COUNT(*) AS frequency
FROM keyword k
JOIN post_keyword pk ON k.keyword_id = pk.keyword_id
GROUP BY k.keyword
ORDER BY frequency DESC;

-- ============================
-- Question#5:Do users adopt a professional tone or a more personal tone more frequently when discussing mental health counseling on X?
-- ============================
SELECT u.verified_status,
       AVG(p.likes) AS avg_likes,
       AVG(p.reposts) AS avg_reposts,
       COUNT(*) AS total_posts
FROM post p
JOIN user_status u ON p.user_id = u.user_id
GROUP BY u.verified_status;

