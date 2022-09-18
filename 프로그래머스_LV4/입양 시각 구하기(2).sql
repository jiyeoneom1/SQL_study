SET @hour =-1;
SELECT (@hour := @hour+1) AS HOUR,
        (SELECT COUNT(*) 
         FROM ANIMAL_OUTS 
         WHERE HOUR(DATETIME) = @hour) AS COUNT 
FROM ANIMAL_OUTS
WHERE @hour < 23
ORDER BY HOUR;