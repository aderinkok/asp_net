--Veritaban� olu�turma i�lemi
CREATE DATABASE asp_net;
use asp_net;

--ornekTablo olu�turma i�lemi
create table ornekTablo
(
id int primary key identity(1,1),
ad VARCHAR(50),
soyad VARCHAR(50),
)

--ornekTablo veri ekleme
INSERT ornekTablo VALUES
('Aslan','Macar'),
('G�l','�zyurt'),
('S�la','Er'),
('Ak�n','G��l�'),
('Mahmut','Akdeniz'),
('Azra','Dumanl�'),
('Ata','Ersoy'),
('Mahir','�afak'),
('Yaren','Ak�ay'),
('Yi�it','�etin'),
('Melih','Aslan'),
('Elif','Bilge'),
('�mit','Eren')


--kullanici tablosu olu�turma i�lemi
CREATE TABLE kullanici(
id INT PRIMARY KEY IDENTITY(1,1),
ad VARCHAR(50) NOT NULL,
mail VARCHAR(50) NOT NULL,
sifre VARCHAR(50) NOT NULL,
olusturulma_tarihi DATE DEFAULT(GETDATE()),
)