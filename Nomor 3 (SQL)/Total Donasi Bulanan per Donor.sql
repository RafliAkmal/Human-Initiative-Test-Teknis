/*Terdapat tiga tabel di database: Donation, Donor, dan Branch. Tabel Donation berisi catatan donasi dengan kolom seperti donation_id, donor_id, branch_id, donation_date, dan amount. Tulis query SQL yang menghitung jumlah donasi bulanan total per donor per cabang. Sertakan query SQL yang dbuat!*/

/*Jawaban:*/

SELECT
    donor_id,
    branch_id,
    EXTRACT(MONTH FROM donation_date) AS month,
    SUM(amount) AS total_amount
FROM
    donation
GROUP BY
    donor_id,
    branch_id,
    month
ORDER BY
    donor_id,
    branch_id,
    month;