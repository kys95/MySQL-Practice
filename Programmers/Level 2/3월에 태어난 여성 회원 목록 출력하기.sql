SELECT member_id, member_name, gender, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
from member_profile
where tlno is not NULL and month(date_of_birth) = 3 and gender = 'W'
order by member_id