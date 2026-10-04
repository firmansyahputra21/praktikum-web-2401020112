USE praktikum_web_240102112;

-- 1. Uji NIM ganda: harus DITOLAK oleh UNIQUE
INSERT INTO mahasiswa
  (nim, nama, email, usia, program_studi_id)
VALUES
  ('2301010011', 'Nama NIM Ganda', 'nim.ganda@example.com', 20, 1);

-- 2. Uji program_studi_id tidak tersedia: harus DITOLAK oleh FOREIGN KEY
INSERT INTO mahasiswa
  (nim, nama, email, usia, program_studi_id)
VALUES
  ('2301030099', 'Uji Foreign Key', 'uji.fk@example.com', 20, 99);

-- 3. Memastikan data tetap 3 baris
SELECT COUNT(*) AS jumlah_mahasiswa
FROM mahasiswa;
