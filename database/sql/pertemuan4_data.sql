USE praktikum_web_240102112;

-- Memasukkan dua program studi
INSERT INTO program_studi (nama_prodi) VALUES
  ('Teknik Informatika'),
  ('Sistem Informasi');

-- Memasukkan empat mahasiswa.
-- Data terakhir sengaja menjadi data sementara untuk diuji DELETE.
INSERT INTO mahasiswa
  (nim, nama, email, usia, program_studi_id)
VALUES
  ('2301010011', 'Firman Dwi Syahputra', 'firmana@example.com', 20, 1),
  ('2301010012', 'Farrel Abhista', 'farrel@example.com', 19, 1),
  ('2301020013', 'Agus Farhan', 'farhan@example.com', 22, 2),
  ('2301020098', 'M.Ridho', 'ridho@example.com', 18, 2);

-- UPDATE
UPDATE mahasiswa
SET email = 'firmand@example.com'
WHERE nim = '2301010011';

-- DELETE data sementara
DELETE FROM mahasiswa
WHERE nim = '2301020098';

-- SELECT JOIN hasil akhir: 3 mahasiswa
SELECT
  m.nim,
  m.nama,
  m.email,
  m.usia,
  p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
  ON p.id = m.program_studi_id
ORDER BY m.nim;
