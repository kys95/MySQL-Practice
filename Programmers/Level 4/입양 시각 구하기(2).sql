SET @MYTIME := -1;
SELECT (@MYTIME := @MYTIME + 1) HOUR,
(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @MYTIME) COUNT
FROM ANIMAL_OUTS 
WHERE @MYTIME < 23;