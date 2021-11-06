select *
from patient
/*where patient_name='&TekstKoitoDaSeIzpishe'*/
where patient_name LIKE '&ime%'

