SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS COUNT
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY
CASE ANIMAL_TYPE
	WHEN 'Cat' THEN 1
	WHEN 'Dog' THEN 2
	ELSE 3
END