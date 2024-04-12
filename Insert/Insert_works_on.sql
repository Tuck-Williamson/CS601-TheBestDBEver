------------------------------
-- works_on_shift
------------------------------


DELETE
	FROM works_on_shift
	WHERE shiftid IS NOT NULL;

INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '091554149'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='9:30 am'), '776644943')
        ;


------------------------------
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '612657236'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='9:30 am'), '801737668')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '741748404'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='9:30 am'), '998847352')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='9:30 am'), '406779105')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='9:30 am'), '598375681')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='9:30 am'), '020015538')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='9:30 am'), '395875054')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='9:30 am'), '035994879')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='9:30 am'), '727992852')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '603287983'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '987566801'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='9:30 am'), '188408772')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='9:30 am'), '020015538')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='9:30 am'), '626483508')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='9:30 am'), '815584893')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='9:30 am'), '282420502')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='9:30 am'), '079301349')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='9:30 am'), '598375681')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='9:30 am'), '077238802')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='9:30 am'), '196669355')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='9:30 am'), '038223326')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='9:30 am'), '349948423')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='9:30 am'), '290980577')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='9:30 am'), '606035342')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='9:30 am'), '190507419')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='9:30 am'), '406779105')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='9:30 am'), '915952606')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='9:30 am'), '395875054')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '070606847'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='9:30 am'), '050101581')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '998847352'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='9:30 am'), '512350123')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='9:30 am'), '225735404')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '998847352'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '612657236'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='9:30 am'), '961235118')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='9:30 am'), '559694621')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '289402279'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='9:30 am'), '512350123')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='9:30 am'), '073002757')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='9:30 am'), '191197193')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='9:30 am'), '438315184')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '289402279'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='9:30 am'), '413494654')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '998847352'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='9:30 am'), '227791004')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='9:30 am'), '604444800')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='9:30 am'), '353175331')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '773895317'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='9:30 am'), '801737668')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='9:30 am'), '868297051')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '070606847'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='9:30 am'), '773895317')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '741748404'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='9:30 am'), '163081250')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='9:30 am'), '549218587')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '987566801'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '998847352'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='9:30 am'), '359404567')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '091554149'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='9:30 am'), '741748404')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='9:30 am'), '227791004')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='9:30 am'), '454996158')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='9:30 am'), '438315184')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '987566801'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='9:30 am'), '915952606')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='9:30 am'), '608875084')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '289402279'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '603287983'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='9:30 am'), '570564619')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='9:30 am'), '788324562')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='9:30 am'), '406779105')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '868297051'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '070606847'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='9:30 am'), '226427673')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='9:30 am'), '356026873')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='9:30 am'), '895172204')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='9:30 am'), '048017726')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='9:30 am'), '709351526')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='9:30 am'), '709351526')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='9:30 am'), '799995205')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '773895317'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='9:30 am'), '460366767')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '612657236'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='9:30 am'), '395875054')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='9:30 am'), '073002757')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '612657236'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='9:30 am'), '002738355')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='9:30 am'), '987566801')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='9:30 am'), '250264699')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='9:30 am'), '961235118')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '773895317'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '998847352'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '603287983'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='9:30 am'), '922853432')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-21' AND StartTime='9:30 am'), '933700700')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-22' AND StartTime='9:30 am'), '638416705')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-23' AND StartTime='9:30 am'), '585877233')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-01' AND StartTime='5:30 pm'), '298398393')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-02' AND StartTime='5:30 pm'), '509198386')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-03' AND StartTime='5:30 pm'), '431546005')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-05' AND StartTime='5:30 pm'), '773922208')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-06' AND StartTime='5:30 pm'), '933700700')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-07' AND StartTime='5:30 pm'), '694952163')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '987566801'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-08' AND StartTime='5:30 pm'), '349948423')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '289402279'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-09' AND StartTime='5:30 pm'), '227791004')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-10' AND StartTime='5:30 pm'), '188408772')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-12' AND StartTime='5:30 pm'), '818508427')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '773895317'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-13' AND StartTime='5:30 pm'), '105399228')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '987566801'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-14' AND StartTime='5:30 pm'), '895172204')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '091554149'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-15' AND StartTime='5:30 pm'), '228238223')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-16' AND StartTime='5:30 pm'), '038223326')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '868297051'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-17' AND StartTime='5:30 pm'), '225735404')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-19' AND StartTime='5:30 pm'), '606035342')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-20' AND StartTime='5:30 pm'), '105399228')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '289402279'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-21' AND StartTime='5:30 pm'), '881090008')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-22' AND StartTime='5:30 pm'), '079301349')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '741748404'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-23' AND StartTime='5:30 pm'), '633776345')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-24' AND StartTime='5:30 pm'), '603287983')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-26' AND StartTime='5:30 pm'), '549218587')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-27' AND StartTime='5:30 pm'), '773895317')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '070606847'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-28' AND StartTime='5:30 pm'), '207951523')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '741748404'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-29' AND StartTime='5:30 pm'), '549218587')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-30' AND StartTime='5:30 pm'), '980176700')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-03-31' AND StartTime='5:30 pm'), '191197193')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '091554149'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-02' AND StartTime='5:30 pm'), '443324088')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-03' AND StartTime='5:30 pm'), '191197193')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-04' AND StartTime='5:30 pm'), '073002757')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '163081250'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-05' AND StartTime='5:30 pm'), '750826949')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '612657236'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-06' AND StartTime='5:30 pm'), '431546005')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '570564619'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-07' AND StartTime='5:30 pm'), '413533939')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-09' AND StartTime='5:30 pm'), '980756358')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-10' AND StartTime='5:30 pm'), '226427673')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-11' AND StartTime='5:30 pm'), '788324562')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '296057908'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-12' AND StartTime='5:30 pm'), '460366767')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-13' AND StartTime='5:30 pm'), '608875084')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-14' AND StartTime='5:30 pm'), '612657236')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '382483089'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '569080662'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-16' AND StartTime='5:30 pm'), '980756358')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '289402279'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '603287983'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '105399228'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-17' AND StartTime='5:30 pm'), '608875084')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '549218587'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '604444800'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '460366767'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-18' AND StartTime='5:30 pm'), '626483508')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '091554149'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '070606847'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '961235118'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-19' AND StartTime='5:30 pm'), '431546005')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-20' AND StartTime='5:30 pm'), '957390053')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '980176700'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-21' AND StartTime='5:30 pm'), '312993563')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '801737668'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-23' AND StartTime='5:30 pm'), '957390053')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '773922208'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-24' AND StartTime='5:30 pm'), '815584893')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '585877233'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-25' AND StartTime='5:30 pm'), '020015538')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '349948423'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '881090008'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '337063900'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-26' AND StartTime='5:30 pm'), '638416705')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '638416705'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '922853432'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-27' AND StartTime='5:30 pm'), '606035342')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '773895317'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '050101581'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-28' AND StartTime='5:30 pm'), '928654994')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '580185721'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-04-30' AND StartTime='5:30 pm'), '353175331')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '868297051'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '190507419'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '406779105'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-01' AND StartTime='5:30 pm'), '928654994')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '559694621'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '868297051'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-02' AND StartTime='5:30 pm'), '980756358')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '850110705'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-03' AND StartTime='5:30 pm'), '349948423')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '020015538'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '923427923'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '980756358'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '454996158'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '527276037'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-04' AND StartTime='5:30 pm'), '626483508')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '359404567'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '598375681'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '443324088'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-05' AND StartTime='5:30 pm'), '079301349')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '694952163'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '298398393'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '431546005'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '928654994'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-07' AND StartTime='5:30 pm'), '709351526')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '395875054'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '073002757'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-08' AND StartTime='5:30 pm'), '509198386')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '868297051'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '750826949'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '312993563'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '512350123'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-09' AND StartTime='5:30 pm'), '818508427')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '957390053'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '895172204'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '196669355'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-10' AND StartTime='5:30 pm'), '458908518')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '077238802'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '608875084'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '612657236'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '626483508'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-11' AND StartTime='5:30 pm'), '431546005')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '282420502'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '035994879'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '226427673'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '048017726'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '915952606'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-12' AND StartTime='5:30 pm'), '296057908')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '188408772'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '002738355'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '998847352'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '727992852'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '356026873'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-14' AND StartTime='5:30 pm'), '207951523')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '079301349'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '799995205'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '070606847'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '191197193'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '987566801'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-15' AND StartTime='5:30 pm'), '818508427')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '773895317'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '606035342'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '788324562'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '818508427'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '660757419'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '181290694'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '225735404'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-16' AND StartTime='5:30 pm'), '091554149')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '776644943'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '438315184'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '413533939'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '038223326'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '353175331'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '815584893'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '209497253'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '285189828'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-17' AND StartTime='5:30 pm'), '598375681')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '290980577'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '845824577'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '202181886'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '933700700'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '709351526'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '633776345'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '509198386'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-18' AND StartTime='5:30 pm'), '443324088')
        ;
INSERT INTO works_on_shift(shiftId, ssn)
	VALUES ((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '228238223'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '908354208'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '250264699'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '207951523'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '458908518'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '091554149'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '413494654'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '227791004'),
		((SELECT shiftid FROM shift WHERE Date='2024-05-19' AND StartTime='5:30 pm'), '915952606')
        ;
