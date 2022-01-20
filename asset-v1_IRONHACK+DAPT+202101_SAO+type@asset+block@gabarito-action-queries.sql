-- Criação de Tabelas

CREATE TABLE IF NOT EXISTS tb_listings (
  "advertiser_id" varchar,
  "listing_id" varchar,
  "portal" varchar,
  "city" varchar,
  "neighborhood" varchar);

CREATE TABLE IF NOT EXISTS tb_leads (
  "listing_id" varchar,
    "leads" int);

CREATE TABLE IF NOT EXISTS tb_advertisers (
	"id" int,
	"nome" varchar,
	"contrato_id" int
);

-- Inserção de Dados nas Tabelas
INSERT INTO tb_leads
VALUES ('048a0a8d01843e2', '100');

INSERT INTO tb_leads
VALUES ('048a0a8d01843e2', 5),  ('08438825a78ee95', 13),  ('fdf8cc57abc6295', 1),  ('e26e785a6330801', 1),  ('08c6aa2798c42c6', 7),  ('cad2e88b5ad31af', 5),  ('a2754e66552841a', 2),  ('fe5c2aca82f0788', 1),  ('2e683b8754956b9', 3),  ('d1baa9c7c59ce9c', 1),  ('0309e01b593eb58', 1) ;

INSERT INTO tb_listings
VALUES 
	('3e7cced6-c11d-4677-a594-6dcfe502faf8', 'aeb212304051058', 'VIVAREAL', 'Santo André', 'Centro'),  
	('0dbdfe30-174a-7a78-2f64-27843f91c98e', 'c5339b423fc2353', 'VIVAREAL', 'Rio de Janeiro', 'Botafogo'),  
	('7a2ebb77-d876-7088-30d2-dbee38de5468', '425a46fc4b5d8d6', 'VIVAREAL', 'Rio de Janeiro', 'Tijuca'),  
	('b7ab5243-2c93-2b9a-d56d-682211343785', 'e11fa48ae9aad6b', 'VIVAREAL', 'Rio de Janeiro', 'Copacabana'),  
	('0fb716c4-073a-b274-60a8-3640b2458f46', 'fa7591050f410d6', 'VIVAREAL', 'São Bernardo do Campo', 'Planalto'),  
	('b7093ce2-d9f6-7345-3aef-ec311a13ff57', '0b73404c45e8477', 'VIVAREAL', 'Rio de Janeiro', 'Pechincha'),  
	('b523d368-6555-2ff9-6597-d327b6d98e88', 'f77f4161ef2ca7e', 'ZAP', 'Rio de Janeiro', 'Praça da Bandeira'),  
	('cbdc552d-838f-c978-48b4-c75bce85cd32', 'b7e01be5d4c7f17', 'VIVAREAL', 'Rio de Janeiro', 'Freguesia- Jacarepaguá'),  ('abd74b46-58cf-80b8-39cb-bc00912e1be8', 'a5d991eb7c39213', 'VIVAREAL', 'Guarulhos', 'Vila das Bandeiras'),  ('c62d6a1e-8024-b9b4-b64a-62a0396f9d89', '048a0a8d01843e2', 'ZAP', 'Rio de Janeiro', 'Ilha do Governador'),  ('2c96d3c3-7c19-2bbc-3f19-2d94941649b2', '0309e01b593eb58', 'VIVAREAL', 'Santo André', 'Jardim Stella'),  ('89fc818e-e81d-ebd2-1c0d-8d58b3152e6c', 'f9439b3fdb9924c', 'VIVAREAL', 'São Caetano do Sul', 'Osvaldo Cruz'),  ('b0827a40-699c-3726-0538-b517dc051edc', '4c557eacae77e68', 'ZAP', 'Rio de Janeiro', 'Copacabana'),  ('be67d2df-d051-04cd-4800-e75001ccfcc6', '08c6aa2798c42c6', 'ZAP', 'Rio de Janeiro', 'Campo Grande'),  ('4386c332-a784-1a92-3420-b133b797c77c', 'd495388b3938e65', 'ZAP', 'Rio de Janeiro', 'Freguesia (Jacarepaguá)'),  ('dcf0f170-4c47-6322-c824-7e8a997bdb08', '2e683b8754956b9', 'ZAP', 'Rio de Janeiro', 'Copacabana'),  ('d0da9055-27c8-a020-192f-22f05936a6f3', 'c550478684ce75a', 'VIVAREAL', 'Rio de Janeiro', 'Barra da Tijuca'),  ('d0584ca4-278e-bb51-24b4-7b7a94dc856c', '4c58321b5d9c247', 'VIVAREAL', 'Guarulhos', 'Vila Moreira'),  ('b593fff7-a222-8b76-9767-5bb06b5e19bc', 'b2488e4a60a4eb9', 'VIVAREAL', 'São Caetano do Sul', 'Fundação'),  ('86f0228d-8651-ffe3-40f1-f8c8bf0547ed', '8abf42f0c34c407', 'VIVAREAL', 'Santo André', 'Centro'),  ('25bf3fd5-6451-38fa-da61-224109af8863', '55d41ca3d676903', 'VIVAREAL', 'Rio de Janeiro', 'Rio Comprido'),  ('47a277cf-0fa0-6ad2-87be-3b588b822060', 'ca68d96311810ce', 'VIVAREAL', 'São Caetano do Sul', 'Santa Maria'),  ('19c989bf-91fb-faf9-a321-552fd39b1c94', 'a0b34ac50831d21', 'VIVAREAL', 'Rio de Janeiro', 'Barra da Tijuca'),  ('ad07ed4d-2828-8a4a-93af-996741de17ad', '2cc51cddb3049e8', 'VIVAREAL', 'Guarulhos', 'Vila Antonieta'),  ('904ce825-5b18-9767-5712-de9bce5d6b0d', 'cad2e88b5ad31af', 'VIVAREAL', 'Rio de Janeiro', 'Flamengo'),  ('35fccc70-c101-d739-fe19-f0d23bc1482b', 'a2754e66552841a', 'ZAP', 'Guarulhos', 'Jardim Bela Vista'),  ('c41c1d69-938b-6504-21d4-3a7e99582a3d', '5d86f847526a90d', 'VIVAREAL', 'Rio de Janeiro', 'Jacarepaguá'),  ('d272d7cf-3370-b8f8-d001-0fc6f5b0dd38', '3e889d9223f31a5', 'ZAP', 'Rio de Janeiro', 'Humaitá'),  ('8357f8d1-5c3c-9eb3-4db1-578f94cd26a0', '70d1570bb525bbf', 'VIVAREAL', 'Santo André', 'Jardim Alvorada'),  ('a8c36aa5-da1c-0c25-7d28-b5e62fed6a80', 'fbfc432bf9b0f10', 'VIVAREAL', 'Rio de Janeiro', 'Barra da Tijuca'),  ('ee29fce3-a269-b007-7f63-9a4bf8d46e0e', 'db92df80a1dee35', 'VIVAREAL', 'Santo André', 'Vila Valparaíso'),  ('532a2e3a-5be6-9edc-7ffd-4d714c40053c', 'fe5c2aca82f0788', 'VIVAREAL', 'Rio de Janeiro', 'Copacabana'),  ('6c953081-7c7e-daf7-2074-520f03a4f04a', 'aa0e2fc4da45250', 'VIVAREAL', 'Santo André', 'Vila Alpina'),  ('8fc8d5dd-6087-3976-a98f-1ed8056f1c7d', '90951784cf41cba', 'VIVAREAL', 'Santo André', 'Vila Metalúrgica'),  ('07c25ae8-b878-0a80-4776-f3a301ab09cf', 'b41ddcec38f323c', 'VIVAREAL', 'Rio de Janeiro', 'Jacarepaguá'),  ('cbdc552d-838f-c978-48b4-c75bce85cd32', 'f4c41c2a2e43109', 'VIVAREAL', 'Rio de Janeiro', 'Barra da Tijuca'),  ('6452e804-d292-c6b8-14a9-8275b0fb2e9f', 'e26e785a6330801', 'ZAP', 'Rio de Janeiro', 'Tijuca'),  ('6f7430b5-b5df-4e23-4514-148317a42980', '5b097ce9de965e3', 'VIVAREAL', 'São Bernardo do Campo', 'Vila Vivaldi'),  ('88eec655-198d-e938-d3e0-e5dc89a25034', 'd1baa9c7c59ce9c', 'VIVAREAL', 'Rio de Janeiro', 'Tanque'),  ('e97331c2-d0c5-89c0-4a7d-c47ece669aa6', '0015478d179fccc', 'VIVAREAL', 'São Bernardo do Campo', 'Vila Normandia'),  ('c8d03e88-9150-507a-8e64-1a83a040cd0c', '08438825a78ee95', 'ZAP', 'Rio de Janeiro', 'Grajaú'),  ('34b70f80-fd12-083b-6692-821a2f821855', '62df65f099a9705', 'VIVAREAL', 'Rio de Janeiro', 'Freguesia (Ilha do Governador)'),  ('e5066af4-d2c1-25f1-b7b6-602ae1eb77c5', '8a90e3c6f1933df', 'VIVAREAL', 'Rio de Janeiro', 'Copacabana'),  ('5e349c0b-d1cc-e3b9-31ff-535438b31a0d', 'fdf8cc57abc6295', 'VIVAREAL', 'Santo André', 'Parque das Nações'),  ('759eb5e6-1a49-623e-1119-420ae66154c2', 'a2fef1e1055718a', 'VIVAREAL', 'Rio de Janeiro', 'Botafogo'),  ('0a70b984-43ed-6cb1-20c3-e27b8e9e494d', '8afe42027b396ab', 'ZAP', 'Rio de Janeiro', 'Botafogo'),  ('fd4e2232-9a56-26fc-129e-4469f02a127b', '4d93f0724132019', 'ZAP', 'São Bernardo do Campo', 'Baeta Neves'),  ('dc18a031-3bae-67fb-f94e-95a7e7152a7d', '709375fc82ae0ec', 'VIVAREAL', 'Santo André', 'Jardim'),  ('08d660eb-8769-f8c5-1ce0-58521c584a31', '3b51cc54000df82', 'ZAP', 'Rio de Janeiro', 'Barra da Tijuca'),  ('2290a2e7-137f-4104-4a29-0cfa0a3da77b', '099703d48490c76', 'VIVAREAL', 'Rio de Janeiro', 'Pechincha') ;

-- Criar uma tabela a partir de uma query
CREATE TABLE tb_leads_listings AS
SELECT 
	tb_listings.*,
	tb_leads.leads
FROM
	tb_listings
		LEFT JOIN 
	tb_leads ON tb_listings.listing_id=tb_leads.listing_id
	
SELECT * FROM tb_leads_listings LIMIT 10

-- Dropar tabela se ela existir
DROP TABLE IF EXISTS public.tb_advertisers

-- Deletar valores da tabela
DELETE FROM tb_listings -- WHERE portal='ZAP'
SELECT count(1) FROM tb_listings

-- Atualizar valores
UPDATE tb_listings SET city='Cidade do Rodrigo' WHERE city='São Caetano do Sul'

SELECT * FROM tb_listings WHERE city='Cidade do Rodrigo'

-- Alterar estrutura da tabela
ALTER TABLE tb_leads ADD COLUMN type_message varchar(50)

