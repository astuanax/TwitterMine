SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP TABLE IF EXISTS `version`;
CREATE  TABLE `version` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Major_version` INT NOT NULL ,
  `Minor_version` INT NULL ,
  `patch_level` INT NULL COMMENT 'path_level is a combination of major and minor level + the number of the patch. \nThe patch nr. should correspond to a file in SVN. ' ,
  PRIMARY KEY (`ID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
  
DROP TABLE IF EXISTS `accounts`;
CREATE  TABLE `accounts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `account` VARCHAR(128) NOT NULL ,
  `twitter_id` BIGINT NULL, 
  PRIMARY KEY (`ID`) ,
  UNIQUE INDEX `account_UNIQUE` (`account` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


INSERT INTO `version` (`Major_version`, `Minor_version`, `patch_level`) VALUES ('0', '0', '1');

INSERT INTO `accounts` (`account`) VALUES ('ACozzolino');
INSERT INTO `accounts` (`account`) VALUES ('adamkosamep');
INSERT INTO `accounts` (`account`) VALUES ('AdinaValean');
INSERT INTO `accounts` (`account`) VALUES ('ALDEADLE');
INSERT INTO `accounts` (`account`) VALUES ('AlexAlvaro');
INSERT INTO `accounts` (`account`) VALUES ('alexandrathein');
INSERT INTO `accounts` (`account`) VALUES ('AlfredsRubiks');
INSERT INTO `accounts` (`account`) VALUES ('Alynsmithmep');
INSERT INTO `accounts` (`account`) VALUES ('amaliasartori');
INSERT INTO `accounts` (`account`) VALUES ('Anargomes');
INSERT INTO `accounts` (`account`) VALUES ('AndreasMoelzer');
INSERT INTO `accounts` (`account`) VALUES ('Andreas_Schwab');
INSERT INTO `accounts` (`account`) VALUES ('Andrea_Zanoni');
INSERT INTO `accounts` (`account`) VALUES ('andrewbronsmep');
INSERT INTO `accounts` (`account`) VALUES ('Andrew_Duff_MEP');
INSERT INTO `accounts` (`account`) VALUES ('andreykovatchev');
INSERT INTO `accounts` (`account`) VALUES ('andrikiene');
INSERT INTO `accounts` (`account`) VALUES ('AngelilliR');
INSERT INTO `accounts` (`account`) VALUES ('anjaweisgerber');
INSERT INTO `accounts` (`account`) VALUES ('AnnaHedh');
INSERT INTO `accounts` (`account`) VALUES ('ANNAMARIACB');
INSERT INTO `accounts` (`account`) VALUES ('AnnaZaborska');
INSERT INTO `accounts` (`account`) VALUES ('AnniPodimata');
INSERT INTO `accounts` (`account`) VALUES ('antolinsp');
INSERT INTO `accounts` (`account`) VALUES ('antpapadopoulou');
INSERT INTO `accounts` (`account`) VALUES ('AParvanova');
INSERT INTO `accounts` (`account`) VALUES ('AsaWestlund');
INSERT INTO `accounts` (`account`) VALUES ('AxelVossMdEP');
INSERT INTO `accounts` (`account`) VALUES ('balcytis');
INSERT INTO `accounts` (`account`) VALUES ('bartstaes');
INSERT INTO `accounts` (`account`) VALUES ('baseickhout');
INSERT INTO `accounts` (`account`) VALUES ('berndlange');
INSERT INTO `accounts` (`account`) VALUES ('Bielan');
INSERT INTO `accounts` (`account`) VALUES ('billcelnegru');
INSERT INTO `accounts` (`account`) VALUES ('billnewtondunn');
INSERT INTO `accounts` (`account`) VALUES ('blochbihler');
INSERT INTO `accounts` (`account`) VALUES ('BReimers');
INSERT INTO `accounts` (`account`) VALUES ('brunogollnisch');
INSERT INTO `accounts` (`account`) VALUES ('BSJ_EP_2009');
INSERT INTO `accounts` (`account`) VALUES ('buba0769');
INSERT INTO `accounts` (`account`) VALUES ('bueti');
INSERT INTO `accounts` (`account`) VALUES ('bvergnaud');
INSERT INTO `accounts` (`account`) VALUES ('Cabrnoch');
INSERT INTO `accounts` (`account`) VALUES ('CarlosCoelhoPE');
INSERT INTO `accounts` (`account`) VALUES ('CarlSchlyter');
INSERT INTO `accounts` (`account`) VALUES ('CarmenRomero09');
INSERT INTO `accounts` (`account`) VALUES ('caspary');
INSERT INTO `accounts` (`account`) VALUES ('Catalin_Ivan');
INSERT INTO `accounts` (`account`) VALUES ('CatherineGreze');
INSERT INTO `accounts` (`account`) VALUES ('CE_MEP');
INSERT INTO `accounts` (`account`) VALUES ('Chatzimarkakis');
INSERT INTO `accounts` (`account`) VALUES ('chdeveyrac');
INSERT INTO `accounts` (`account`) VALUES ('ChrisDaviesMEP');
INSERT INTO `accounts` (`account`) VALUES ('Claude_Turmes');
INSERT INTO `accounts` (`account`) VALUES ('clegrip');
INSERT INTO `accounts` (`account`) VALUES ('CMastella');
INSERT INTO `accounts` (`account`) VALUES ('Cofferati');
INSERT INTO `accounts` (`account`) VALUES ('comilara');
INSERT INTO `accounts` (`account`) VALUES ('corinnelepage');
INSERT INTO `accounts` (`account`) VALUES ('CristiBusoi');
INSERT INTO `accounts` (`account`) VALUES ('C_Stihler_MEP');
INSERT INTO `accounts` (`account`) VALUES ('DacianaSarbu');
INSERT INTO `accounts` (`account`) VALUES ('dajcstomi');
INSERT INTO `accounts` (`account`) VALUES ('DanHannanMEP');
INSERT INTO `accounts` (`account`) VALUES ('danycohnbendit');
INSERT INTO `accounts` (`account`) VALUES ('datirachida');
INSERT INTO `accounts` (`account`) VALUES ('davidmartinmep');
INSERT INTO `accounts` (`account`) VALUES ('DavidSassoli');
INSERT INTO `accounts` (`account`) VALUES ('delcastillop/');
INSERT INTO `accounts` (`account`) VALUES ('derekvaughan');
INSERT INTO `accounts` (`account`) VALUES ('desarnez');
INSERT INTO `accounts` (`account`) VALUES ('diogo_feio');
INSERT INTO `accounts` (`account`) VALUES ('DJazlowiecka');
INSERT INTO `accounts` (`account`) VALUES ('DRothBehrendt');
INSERT INTO `accounts` (`account`) VALUES ('ebasescu');
INSERT INTO `accounts` (`account`) VALUES ('ecrgroup');
INSERT INTO `accounts` (`account`) VALUES ('editeestrela');
INSERT INTO `accounts` (`account`) VALUES ('EFDgroup');
INSERT INTO `accounts` (`account`) VALUES ('EGardini');
INSERT INTO `accounts` (`account`) VALUES ('elisaferreira');
INSERT INTO `accounts` (`account`) VALUES ('ElliKoestinger');
INSERT INTO `accounts` (`account`) VALUES ('emcmillanscott');
INSERT INTO `accounts` (`account`) VALUES ('emercostello');
INSERT INTO `accounts` (`account`) VALUES ('EmineBozkurt');
INSERT INTO `accounts` (`account`) VALUES ('EmmaMcClarkin');
INSERT INTO `accounts` (`account`) VALUES ('emorinchartier');
INSERT INTO `accounts` (`account`) VALUES ('epdonskis');
INSERT INTO `accounts` (`account`) VALUES ('EPinUK');
INSERT INTO `accounts` (`account`) VALUES ('EPPGroup');
INSERT INTO `accounts` (`account`) VALUES ('EP_Belgium');
INSERT INTO `accounts` (`account`) VALUES ('ErminiaMazzoni');
INSERT INTO `accounts` (`account`) VALUES ('ER_Korhola');
INSERT INTO `accounts` (`account`) VALUES ('esmepbru');
INSERT INTO `accounts` (`account`) VALUES ('Esther_de_Lange');
INSERT INTO `accounts` (`account`) VALUES ('ETurunen');
INSERT INTO `accounts` (`account`) VALUES ('eurofractiesgp');
INSERT INTO `accounts` (`account`) VALUES ('EuroMP_ArleneMc');
INSERT INTO `accounts` (`account`) VALUES ('EuropaJens');
INSERT INTO `accounts` (`account`) VALUES ('europamayer');
INSERT INTO `accounts` (`account`) VALUES ('europarlAV');
INSERT INTO `accounts` (`account`) VALUES ('europarlement');
INSERT INTO `accounts` (`account`) VALUES ('europarllibrary');
INSERT INTO `accounts` (`account`) VALUES ('europarlpress');
INSERT INTO `accounts` (`account`) VALUES ('europarltv');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_BG');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_CAT');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_CS');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_da');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_DE');
INSERT INTO `accounts` (`account`) VALUES ('europarl_dgINTE');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_EL');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_EN');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_ES');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_ET');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_FI');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_FR');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_HU');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_IT');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_Latvia');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_LT');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_LV');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_MT');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_NL');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_Photo');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_PL');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_PT');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_RO');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_SK');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_SL');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_sv');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_UK');
INSERT INTO `accounts` (`account`) VALUES ('Europarl_Vienna');
INSERT INTO `accounts` (`account`) VALUES ('evajoly');
INSERT INTO `accounts` (`account`) VALUES ('EvaOrtizVilella');
INSERT INTO `accounts` (`account`) VALUES ('eva_lichti');
INSERT INTO `accounts` (`account`) VALUES ('Evelyn_Regner');
INSERT INTO `accounts` (`account`) VALUES ('fdeangelis313');
INSERT INTO `accounts` (`account`) VALUES ('fidanzacarlo');
INSERT INTO `accounts` (`account`) VALUES ('Fjellner');
INSERT INTO `accounts` (`account`) VALUES ('francoisalfonsi');
INSERT INTO `accounts` (`account`) VALUES ('franziskaEP09');
INSERT INTO `accounts` (`account`) VALUES ('FrCastex');
INSERT INTO `accounts` (`account`) VALUES ('fredericdaerden');
INSERT INTO `accounts` (`account`) VALUES ('Frederiqueries');
INSERT INTO `accounts` (`account`) VALUES ('GastonFranco');
INSERT INTO `accounts` (`account`) VALUES ('georgelyonmep');
INSERT INTO `accounts` (`account`) VALUES ('Gerald_Haefner');
INSERT INTO `accounts` (`account`) VALUES ('GerardBattenMEP');
INSERT INTO `accounts` (`account`) VALUES ('Gerbrandy');
INSERT INTO `accounts` (`account`) VALUES ('gesine_meissner');
INSERT INTO `accounts` (`account`) VALUES ('gfarm');
INSERT INTO `accounts` (`account`) VALUES ('ghokmark');
INSERT INTO `accounts` (`account`) VALUES ('giannipittella');
INSERT INTO `accounts` (`account`) VALUES ('gillespargneaux');
INSERT INTO `accounts` (`account`) VALUES ('GiovanniLaVia');
INSERT INTO `accounts` (`account`) VALUES ('GiuseppeGargani');
INSERT INTO `accounts` (`account`) VALUES ('GKoumoutsakos');
INSERT INTO `accounts` (`account`) VALUES ('gleniswillmott');
INSERT INTO `accounts` (`account`) VALUES ('Goddersukip');
INSERT INTO `accounts` (`account`) VALUES ('GPapastamkos');
INSERT INTO `accounts` (`account`) VALUES ('grahamwatsonmep');
INSERT INTO `accounts` (`account`) VALUES ('greensep');
INSERT INTO `accounts` (`account`) VALUES ('Groote');
INSERT INTO `accounts` (`account`) VALUES ('gualtierieurope');
INSERT INTO `accounts` (`account`) VALUES ('GUENGL');
INSERT INTO `accounts` (`account`) VALUES ('GuidoMilana');
INSERT INTO `accounts` (`account`) VALUES ('GuyVerhofstadt');
INSERT INTO `accounts` (`account`) VALUES ('Hannes_Swoboda');
INSERT INTO `accounts` (`account`) VALUES ('hans_van_baalen');
INSERT INTO `accounts` (`account`) VALUES ('harlemdesir');
INSERT INTO `accounts` (`account`) VALUES ('henriweber');
INSERT INTO `accounts` (`account`) VALUES ('HerbertDorfmann');
INSERT INTO `accounts` (`account`) VALUES ('HolgerKrahmer');
INSERT INTO `accounts` (`account`) VALUES ('hreul');
INSERT INTO `accounts` (`account`) VALUES ('httpG_Uggias');
INSERT INTO `accounts` (`account`) VALUES ('HynekFAJMON');
INSERT INTO `accounts` (`account`) VALUES ('iatsoukalas');
INSERT INTO `accounts` (`account`) VALUES ('IKasoulides');
INSERT INTO `accounts` (`account`) VALUES ('indrektarand');
INSERT INTO `accounts` (`account`) VALUES ('ioanmirceapascu');
INSERT INTO `accounts` (`account`) VALUES ('Isabelle_Durant');
INSERT INTO `accounts` (`account`) VALUES ('IvailoKalfin');
INSERT INTO `accounts` (`account`) VALUES ('IvarsGodmanis');
INSERT INTO `accounts` (`account`) VALUES ('ivobelet');
INSERT INTO `accounts` (`account`) VALUES ('Jaakonsaari');
INSERT INTO `accounts` (`account`) VALUES ('janalbrecht');
INSERT INTO `accounts` (`account`) VALUES ('jeanlucdeheane');
INSERT INTO `accounts` (`account`) VALUES ('jensrohde');
INSERT INTO `accounts` (`account`) VALUES ('JerzyBuzek');
INSERT INTO `accounts` (`account`) VALUES ('jfostermep');
INSERT INTO `accounts` (`account`) VALUES ('jillevansmep');
INSERT INTO `accounts` (`account`) VALUES ('JimHigginsMEP');
INSERT INTO `accounts` (`account`) VALUES ('JimNicholsonMEP');
INSERT INTO `accounts` (`account`) VALUES ('JlBennahmias');
INSERT INTO `accounts` (`account`) VALUES ('jleichtfried');
INSERT INTO `accounts` (`account`) VALUES ('joachimzeller');
INSERT INTO `accounts` (`account`) VALUES ('Joanna_Senyszyn');
INSERT INTO `accounts` (`account`) VALUES ('josebove');
INSERT INTO `accounts` (`account`) VALUES ('JosephDaul');
INSERT INTO `accounts` (`account`) VALUES ('jpbesset');
INSERT INTO `accounts` (`account`) VALUES ('jskrzydlewska');
INSERT INTO `accounts` (`account`) VALUES ('judithineuropa');
INSERT INTO `accounts` (`account`) VALUES ('JudithMerkies');
INSERT INTO `accounts` (`account`) VALUES ('juliegirling');
INSERT INTO `accounts` (`account`) VALUES ('juttasteinruck');
INSERT INTO `accounts` (`account`) VALUES ('j_klute');
INSERT INTO `accounts` (`account`) VALUES ('Kalniete');
INSERT INTO `accounts` (`account`) VALUES ('KarimaDelli');
INSERT INTO `accounts` (`account`) VALUES ('karinkadenbach');
INSERT INTO `accounts` (`account`) VALUES ('karsenis');
INSERT INTO `accounts` (`account`) VALUES ('KatkaNevedal');
INSERT INTO `accounts` (`account`) VALUES ('kazakmetin');
INSERT INTO `accounts` (`account`) VALUES ('knufleckenstein');
INSERT INTO `accounts` (`account`) VALUES ('Koch_Mehrin');
INSERT INTO `accounts` (`account`) VALUES ('kozusnik');
INSERT INTO `accounts` (`account`) VALUES ('krisjaniskarins');
INSERT INTO `accounts` (`account`) VALUES ('Lambertsph');
INSERT INTO `accounts` (`account`) VALUES ('Lambsdorff_live');
INSERT INTO `accounts` (`account`) VALUES ('Landsbergis');
INSERT INTO `accounts` (`account`) VALUES ('ldomenici');
INSERT INTO `accounts` (`account`) VALUES ('LiamAylward');
INSERT INTO `accounts` (`account`) VALUES ('libertarofuturo');
INSERT INTO `accounts` (`account`) VALUES ('LiciaRonzulli');
INSERT INTO `accounts` (`account`) VALUES ('lidiageringer');
INSERT INTO `accounts` (`account`) VALUES ('LindaMcAvanMEP');
INSERT INTO `accounts` (`account`) VALUES ('loekkegaard_mep');
INSERT INTO `accounts` (`account`) VALUES ('LucasHartong');
INSERT INTO `accounts` (`account`) VALUES ('luispalves');
INSERT INTO `accounts` (`account`) VALUES ('mandreasen');
INSERT INTO `accounts` (`account`) VALUES ('ManfredWeber');
INSERT INTO `accounts` (`account`) VALUES ('marabizzotto');
INSERT INTO `accounts` (`account`) VALUES ('MarcoScurria');
INSERT INTO `accounts` (`account`) VALUES ('marctarabella');
INSERT INTO `accounts` (`account`) VALUES ('mareksiwiec');
INSERT INTO `accounts` (`account`) VALUES ('MargreteAuken');
INSERT INTO `accounts` (`account`) VALUES ('MarianHarkin');
INSERT INTO `accounts` (`account`) VALUES ('MarietjeD66');
INSERT INTO `accounts` (`account`) VALUES ('marijec');
INSERT INTO `accounts` (`account`) VALUES ('maritaulvskog');
INSERT INTO `accounts` (`account`) VALUES ('MartinHaeusling');
INSERT INTO `accounts` (`account`) VALUES ('martinkastler');
INSERT INTO `accounts` (`account`) VALUES ('MartinSchulz');
INSERT INTO `accounts` (`account`) VALUES ('maryhoneyball');
INSERT INTO `accounts` (`account`) VALUES ('matteosalvinimi');
INSERT INTO `accounts` (`account`) VALUES ('MBENARABATTOU');
INSERT INTO `accounts` (`account`) VALUES ('mcashmanmep');
INSERT INTO `accounts` (`account`) VALUES ('MCVergiat');
INSERT INTO `accounts` (`account`) VALUES ('mehrenhauser');
INSERT INTO `accounts` (`account`) VALUES ('melenchon2012');
INSERT INTO `accounts` (`account`) VALUES ('MEPStandingUp4U');
INSERT INTO `accounts` (`account`) VALUES ('michelerivasi');
INSERT INTO `accounts` (`account`) VALUES ('MidiEuroparlMet');
INSERT INTO `accounts` (`account`) VALUES ('MitroRepo');
INSERT INTO `accounts` (`account`) VALUES ('MLP_officiel');
INSERT INTO `accounts` (`account`) VALUES ('mmatias_');
INSERT INTO `accounts` (`account`) VALUES ('mojcakleva');
INSERT INTO `accounts` (`account`) VALUES ('morganticlaudio');
INSERT INTO `accounts` (`account`) VALUES ('nadjahirsch');
INSERT INTO `accounts` (`account`) VALUES ('NChildersMEP');
INSERT INTO `accounts` (`account`) VALUES ('ngriesbeck');
INSERT INTO `accounts` (`account`) VALUES ('NiccoloRinaldi');
INSERT INTO `accounts` (`account`) VALUES ('nickgriffinmep');
INSERT INTO `accounts` (`account`) VALUES ('nigel_farage');
INSERT INTO `accounts` (`account`) VALUES ('OjulandK');
INSERT INTO `accounts` (`account`) VALUES ('OlgaSehnalova');
INSERT INTO `accounts` (`account`) VALUES ('olleludvigsson');
INSERT INTO `accounts` (`account`) VALUES ('OnMarioPIRILLO');
INSERT INTO `accounts` (`account`) VALUES ('othmar_karas');
INSERT INTO `accounts` (`account`) VALUES ('paolodecastro');
INSERT INTO `accounts` (`account`) VALUES ('PatricielloAldo');
INSERT INTO `accounts` (`account`) VALUES ('PatrickLeHyaric');
INSERT INTO `accounts` (`account`) VALUES ('PaulNuttallMEP');
INSERT INTO `accounts` (`account`) VALUES ('pavelpoc');
INSERT INTO `accounts` (`account`) VALUES ('pawelkowalpl');
INSERT INTO `accounts` (`account`) VALUES ('PervencheBeres');
INSERT INTO `accounts` (`account`) VALUES ('peterliese');
INSERT INTO `accounts` (`account`) VALUES ('PeterSkinnerMEP');
INSERT INTO `accounts` (`account`) VALUES ('petervdalen');
INSERT INTO `accounts` (`account`) VALUES ('PETI_EU');
INSERT INTO `accounts` (`account`) VALUES ('petrisarvamaa');
INSERT INTO `accounts` (`account`) VALUES ('PE_Madrid');
INSERT INTO `accounts` (`account`) VALUES ('philippejuvin');
INSERT INTO `accounts` (`account`) VALUES ('Philip_Claeys');
INSERT INTO `accounts` (`account`) VALUES ('PTirolien');
INSERT INTO `accounts` (`account`) VALUES ('rafbaladassarre');
INSERT INTO `accounts` (`account`) VALUES ('raulromeva');
INSERT INTO `accounts` (`account`) VALUES ('RCortesLastra');
INSERT INTO `accounts` (`account`) VALUES ('reimerboege');
INSERT INTO `accounts` (`account`) VALUES ('renateweber');
INSERT INTO `accounts` (`account`) VALUES ('RiaOomenRuijten');
INSERT INTO `accounts` (`account`) VALUES ('RichardFalbr');
INSERT INTO `accounts` (`account`) VALUES ('richardhowitt');
INSERT INTO `accounts` (`account`) VALUES ('RitaBorsellino');
INSERT INTO `accounts` (`account`) VALUES ('rjordancizelj');
INSERT INTO `accounts` (`account`) VALUES ('robertrochefort');
INSERT INTO `accounts` (`account`) VALUES ('robertszile');
INSERT INTO `accounts` (`account`) VALUES ('robiols');
INSERT INTO `accounts` (`account`) VALUES ('Rodi_Kratsa');
INSERT INTO `accounts` (`account`) VALUES ('RogerHelmerMEP');
INSERT INTO `accounts` (`account`) VALUES ('ruitavares');
INSERT INTO `accounts` (`account`) VALUES ('r_czarnecki');
INSERT INTO `accounts` (`account`) VALUES ('sabincutas');
INSERT INTO `accounts` (`account`) VALUES ('SaidElKhadraoui');
INSERT INTO `accounts` (`account`) VALUES ('SajjadKarimMEP');
INSERT INTO `accounts` (`account`) VALUES ('salvadorsedo');
INSERT INTO `accounts` (`account`) VALUES ('sandrinebelier');
INSERT INTO `accounts` (`account`) VALUES ('satuhassi');
INSERT INTO `accounts` (`account`) VALUES ('Saudargas');
INSERT INTO `accounts` (`account`) VALUES ('SCaronna');
INSERT INTO `accounts` (`account`) VALUES ('schmidtblogg');
INSERT INTO `accounts` (`account`) VALUES ('SeanKellyMEP');
INSERT INTO `accounts` (`account`) VALUES ('SERGIOBERLATO');
INSERT INTO `accounts` (`account`) VALUES ('serracchiani');
INSERT INTO `accounts` (`account`) VALUES ('SharonBowlesMEP');
INSERT INTO `accounts` (`account`) VALUES ('SidoniaJ');
INSERT INTO `accounts` (`account`) VALUES ('SkaKeller');
INSERT INTO `accounts` (`account`) VALUES ('SlaviBinev');
INSERT INTO `accounts` (`account`) VALUES ('slawomirnitras');
INSERT INTO `accounts` (`account`) VALUES ('SoniaAlfano');
INSERT INTO `accounts` (`account`) VALUES ('sophieintveld');
INSERT INTO `accounts` (`account`) VALUES ('Sophie_Auconie');
INSERT INTO `accounts` (`account`) VALUES ('SSilvestris');
INSERT INTO `accounts` (`account`) VALUES ('statarella');
INSERT INTO `accounts` (`account`) VALUES ('StoepPVV');
INSERT INTO `accounts` (`account`) VALUES ('sven_giegold');
INSERT INTO `accounts` (`account`) VALUES ('SyedKamall');
INSERT INTO `accounts` (`account`) VALUES ('sylvieguillaume');
INSERT INTO `accounts` (`account`) VALUES ('S_Iacolino');
INSERT INTO `accounts` (`account`) VALUES ('tarjacronberg');
INSERT INTO `accounts` (`account`) VALUES ('Tatjana_Zdanoka');
INSERT INTO `accounts` (`account`) VALUES ('teirdes');
INSERT INTO `accounts` (`account`) VALUES ('tfajon');
INSERT INTO `accounts` (`account`) VALUES ('TheProgressives');
INSERT INTO `accounts` (`account`) VALUES ('thijsberman');
INSERT INTO `accounts` (`account`) VALUES ('TitoSalatto');
INSERT INTO `accounts` (`account`) VALUES ('TizianoMotti');
INSERT INTO `accounts` (`account`) VALUES ('toiapatrizia');
INSERT INTO `accounts` (`account`) VALUES ('toinemanders');
INSERT INTO `accounts` (`account`) VALUES ('TonoEPP');
INSERT INTO `accounts` (`account`) VALUES ('trevorcolman');
INSERT INTO `accounts` (`account`) VALUES ('trzaskowski_');
INSERT INTO `accounts` (`account`) VALUES ('UlrikeLunacek');
INSERT INTO `accounts` (`account`) VALUES ('UlrikeRodust');
INSERT INTO `accounts` (`account`) VALUES ('vadim_tudor');
INSERT INTO `accounts` (`account`) VALUES ('VaidereInese');
INSERT INTO `accounts` (`account`) VALUES ('VidalQuadras');
INSERT INTO `accounts` (`account`) VALUES ('vigenin');
INSERT INTO `accounts` (`account`) VALUES ('vitalmoreira09');
INSERT INTO `accounts` (`account`) VALUES ('Weidenholzer');
INSERT INTO `accounts` (`account`) VALUES ('WernerKuhnMdEP');
INSERT INTO `accounts` (`account`) VALUES ('wimvandecamp');
INSERT INTO `accounts` (`account`) VALUES ('wolejniczak1');
INSERT INTO `accounts` (`account`) VALUES ('yannickjadot');
INSERT INTO `accounts` (`account`) VALUES ('ycochet');
INSERT INTO `accounts` (`account`) VALUES ('zgurmai_EN');
INSERT INTO `accounts` (`account`) VALUES ('zofijamazej');



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




