--Veritabaný oluþturma iþlemi
CREATE DATABASE asp_net;
use asp_net;

--ornekTablo oluþturma iþlemi
create table ornekTablo
(
id int primary key identity(1,1),
ad VARCHAR(50),
soyad VARCHAR(50),
)

--ornekTablo veri ekleme
INSERT ornekTablo VALUES
('Aslan','Macar'),
('Gül','Özyurt'),
('Sýla','Er'),
('Akýn','Güçlü'),
('Mahmut','Akdeniz'),
('Azra','Dumanlý'),
('Ata','Ersoy'),
('Mahir','Þafak'),
('Yaren','Akçay'),
('Yiðit','Çetin'),
('Melih','Aslan'),
('Elif','Bilge'),
('Ümit','Eren')


--kullanici tablosu oluþturma iþlemi
CREATE TABLE kullanici(
id INT PRIMARY KEY IDENTITY(1,1),
ad VARCHAR(50) NOT NULL,
mail VARCHAR(50) NOT NULL,
sifre VARCHAR(50) NOT NULL,
olusturulma_tarihi DATE DEFAULT(GETDATE()),
)