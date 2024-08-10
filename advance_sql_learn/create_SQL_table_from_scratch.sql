-- CREATE TABLE job_applied(
--     job_id INT,
--     application_sent_data DATE,
--     custom_resume BOOLEAN,
--     resume_file_name VARCHAR(255),
--     cover_letter_sent BOOLEAN,
--     cover_letter_file_name VARCHAR(255),
--     status VARCHAR(50)
-- );
-- SELECT *
-- FROM job_applied 

-- INSERT INTO job_applied
--     (job_id,
--     application_sent_data,
--     custom_resume,
--     resume_file_name,
--     cover_letter_sent,
--     cover_letter_file_name,
--     status)

-- VALUES  (1,
--         '2024-01-01',
--         true,
--         'resume_01.pdf',
--         true,
--         'cover_letter_01.pdf',
--         'waiting for test'),
--         (2,
--         '2024-01-01',
--         true,
--         'resume_02.pdf',
--         true,
--         'cover_letter_01.pdf',
--         'submitted'),
--         (3,
--         '2024-01-01',
--         true,
--         'resume_03.pdf',
--         false,
--         NULL,
--         'rejected'),
--         (4,
--         '2024-01-01',
--         true,
--         'resume_04.pdf',
--         false,
--         NULL,
--         'submitted'),
--         (5,
--         '2024-01-01',
--         true,
--         'resume_05.pdf',
--         true,
--         'cover_letter_01.pdf',
--         'interviewed')

-- ALTER TABLE job_applied
-- ADD contact VARCHAR(50);

-- UPDATE job_applied
-- SET contact = 'Jawa'
-- WHERE job_id = 1;

-- UPDATE job_applied
-- SET contact = 'Jawg'
-- WHERE job_id = 2;

-- UPDATE job_applied
-- SET contact = 'Jawn'
-- WHERE job_id = 3;

-- UPDATE job_applied
-- SET contact = 'Helsinki'
-- WHERE job_id = 4;

-- UPDATE job_applied
-- SET contact = 'Vrev'
-- WHERE job_id = 5;

-- ALTER TABLE job_applied
-- RENAME COLUMN contact TO contact_name

-- ALTER TABLE job_applied
-- ALTER COLUMN contact_name TYPE TEXT;

-- ALTER TABLE job_applied
-- DROP COLUMN contact_name;

-- DROP TABLE job_applied;

-- SELECT *
-- FROM job_applied 
