--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.2.4
-- Started on 2013-11-04 14:18:16 CET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = distribution, pg_catalog;

--
-- TOC entry 4136 (class 0 OID 167706)
-- Dependencies: 495
-- Data for Name: installation_pump; Type: TABLE DATA; Schema: distribution; Owner: sige
--

INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (122, 530, 2, NULL, 811.330, 1, 340.00, 105.00, NULL, '010100002015550000D52F85A5A409214157ECCC80B6910241', 'Bellière', 4002, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (123, 301, 1, 2, 590.346, 3, 1200.00, 250.00, NULL, '0101000020155500000ADB0D6EFBEA2041A0F5D778820A0241', 'Bérgère', 4003, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (124, 304, 1, 1, 1038.186, 2, 820.00, 165.00, NULL, '0101000020155500002D68EF7CBF2521417307B994F6B80141', 'Peccaux', 4007, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (125, 305, 2, NULL, 470.270, 1, 3200.00, 39.00, NULL, '010100002015550000F9E2A47124072141DF1C095F51AC0141', 'Plan Chailly', 4008, 1, 1, NULL, NULL, NULL, 2006, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (127, 303, 1, 2, 393.414, 2, 3400.00, 145.00, NULL, '010100002015550000D6AFAE9B80D920418FD7AC4814EC0141', 'Gonelles', 4005, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (126, 303, 1, 2, 393.414, 6, 26550.00, 82.00, NULL, '010100002015550000D6AFAE9B80D920418FD7AC4814EC0141', 'Gonelles', 4005, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (139, 3, 1, NULL, 1182.742, 1, 180.00, 105.00, 'Schéma périmé: appareillage refait à neuf en 2003!HMT estimée, données de pompes pas dispo.', '010100002015550000C99FDA52E9282141CBC39DDE506B0141', 'Caux', 1003, 1, 1, NULL, NULL, NULL, 1934, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (134, 7, 1, 2, 449.866, 3, 10090.00, 55.00, NULL, '01010000201555000039DD47F28DEC2041FF38692B49F10141', 'Corsier 31', 1008, 1, 1, NULL, NULL, NULL, 1931, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (140, 525, 1, NULL, 1284.665, 1, 90.00, 245.00, 'Fermeture: clé SIGE / appareillage modifié en 2001 (chambre extérieure + pompage)HMT estimée, données de pompes pas dispo.', '010100002015550000FA882D9F442D21411CDBDF4F886D0141', 'Crêt d''y Bau', 1010, 1, 1, NULL, NULL, NULL, 1899, NULL, '6111', NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (132, 13, 1, 2, 950.519, 2, 1150.00, 130.00, 'Fermeture: clé SIGE1 pompe = 970 l/minHMT estimée altitudes et selon caractéristiques pompes Q-HMT: 900-142', '010100002015550000594B2215DCE22041321EC6E8791F0241', 'Maison Jean', 1018, 1, 1, NULL, NULL, NULL, 1964, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (136, 17, 1, 1, 1257.999, 2, 250.00, 125.00, NULL, '010100002015550000EA49D38DAB26214107580E1954C90141', 'Pacoresse', 1026, 1, 1, NULL, NULL, NULL, 1973, NULL, '4500', '6647');
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (133, 19, 1, 1, 704.234, 2, 900.00, 135.00, 'Fermeture: clé SIGEQ moyen = 600 l/min ou 480 l/min Attention Q à vérifier 3 valeurs différentes. Q-HMT pompe: 600-165 Pompage contre réseau: enclenchement à 4 bar, déclenchement à 7 bar', '010100002015550000F70890E038EC20413B7B5FD3EC190241', 'Perrettaz', 1029, 1, 1, NULL, NULL, NULL, 1989, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (141, 29, 2, NULL, 450.070, 1, 420.00, 30.00, NULL, '010100002015550000283B47280C0A2141D1EDA1849F9F0141', 'Tavel', 1038, 1, 1, NULL, NULL, NULL, 1932, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (138, 31, 1, NULL, 480.973, 1, 2500.00, 25.00, 'Fermeture: clé SIGEHMT estimée, données de pompes pas dispo.', '010100002015550000C1A101FA55142141FEDDD0DEC3790141', 'Vuarennes', 1042, 1, 1, NULL, NULL, NULL, 1905, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (128, 302, 1, 1, 1357.890, 2, 155.00, 140.00, NULL, '010100002015550000C498D385C625214113AF576D98E20141', 'Billens', 4004, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (137, 402, 1, NULL, 1032.491, 1, 600.00, 80.00, 'Rénovée en  1888 / 1942 / 1991 Chloration et pompageHMT estimée, données de pompes pas dispo.', '010100002015550000C6F321AB9C292141E677DC20A5AB0141', 'Avants', 3002, 1, 1, NULL, NULL, NULL, 1868, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (135, 410, 2, 1, 860.383, 2, 420.00, 60.00, 'Autre fonction: pompageHMT estimée car pression dispo à l''amont variable: HMT max', '0101000020155500002183CBE1E201214125C5F09E0F720241', 'Baumettaz', 3007, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (129, 446, 2, 1, 531.174, 2, 1400.00, 65.00, NULL, '010100002015550000E99515D59BF520413B36C04C9A100241', 'Fenil', 4006, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (142, 10, 1, NULL, 767.644, 1, 150.00, 415.00, 'clé SIGEHMT estimée, données de pompes pas dispo.', '0101000020155500002B18F0FFEB1C2141FB7035BF43640141', 'Glion', 1012, 1, 1, NULL, NULL, NULL, 1976, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (130, 562, 1, 2, 500.420, 2, 1800.00, 75.00, NULL, '010100002015550000F6F553BCDAEB20410C925F33DDFB0141', 'St-Pierre', 4009, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (131, 562, 1, 2, 500.420, 2, 7500.00, 229.00, NULL, '010100002015550000F6F553BCDAEB20410C925F33DDFB0141', 'St-Pierre', 4009, 1, 1, NULL, NULL, NULL, 1899, NULL, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0101000020155500008C69855F93E520413EA99B407ECA0141', 'Arabie', 4001, 4, 1, NULL, NULL, NULL, 1899, false, NULL, NULL);
INSERT INTO distribution.installation_pump (id, id_installation, id_type, id_operating, altitude, nb_pump, rejected_flow, manometric_height, remarks, geometry, name, identification, id_status, id_distributor, id_remote, view_schema, links, year, open_water_surface, parcel, eca) VALUES (144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '010100002015550000531863DD44082141EC131F43E9B70141', 'Vignerons', 4010, 1, 4, NULL, NULL, NULL, 1899, false, NULL, NULL);


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 494
-- Name: installation_pump_id_seq; Type: SEQUENCE SET; Schema: distribution; Owner: sige
--

SELECT pg_catalog.setval('installation_pump_id_seq', 144, true);


-- Completed on 2013-11-04 14:18:17 CET

--
-- PostgreSQL database dump complete
--

