alter session set current_schema = cdwh_stg_010138_dynamics;


CREATE TABLE CUSTOMER ( C_CUSTKEY     INTEGER NOT NULL,
                        C_NAME        VARCHAR(25) NOT NULL,
                        C_ADDRESS     VARCHAR(40) NOT NULL,
                        C_NATIONKEY   INTEGER NOT NULL,
                        C_PHONE       CHAR(15) NOT NULL,
                        C_ACCTBAL     DECIMAL(15,2)   NOT NULL,
                        C_MKTSEGMENT  CHAR(10) NOT NULL,
                        C_COMMENT     VARCHAR(117) NOT NULL);

INSERT INTO customer VALUES (18,'Customer#000000018','3txGO AiuFux3zT0Z9NYaFRnZt',6,'16-155-215-1315',5494.43,'BUILDING','s sleep. carefully even instructions nag furiously alongside of t');
INSERT INTO customer VALUES (19,'Customer#000000019','uc,3bHIx84H,wdrmLOjVsiqXCq2tr',18,'28-396-526-5053',8914.71,'HOUSEHOLD',' nag. furiously careful packages are slyly at the accounts. furiously regular in');
INSERT INTO customer VALUES (20,'Customer#000000020','JrPk8Pqplj4Ne',22,'32-957-234-8742',7603.40,'FURNITURE','g alongside of the special excuses-- fluffily enticing packages wake ');
INSERT INTO customer VALUES (21,'Customer#000000021','XYmVpr9yAHDEn',8,'18-902-614-8344',1428.25,'MACHINERY',' quickly final accounts integrate blithely furiously u');
INSERT INTO customer VALUES (22,'Customer#000000022','QI6p41,FNs5k7RZoCCVPUTkUdYpB',3,'13-806-545-9701',591.98,'MACHINERY','s nod furiously above the furiously ironic ideas. ');
INSERT INTO customer VALUES (23,'Customer#000000023','OdY W13N7Be3OC5MpgfmcYss0Wn6TKT',3,'13-312-472-8245',3332.02,'HOUSEHOLD','deposits. special deposits cajole slyly. fluffily special deposits about the furiously ');
INSERT INTO customer VALUES (24,'Customer#000000024','HXAFgIAyjxtdqwimt13Y3OZO 4xeLe7U8PqG',13,'23-127-851-8031',9255.67,'MACHINERY','into beans. fluffily final ideas haggle fluffily');





create table nation (
  n_nationkey number(10) not null,
  n_name varchar2(25) not null,
  n_regionkey number(10) not null,
  n_comment varchar2(152) not null
);



Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('0','ALGERIA','0',' haggle. carefully final deposits detect slyly agai');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('1','ARGENTINA','1','al foxes promise slyly according to the regular accounts. bold requests alon');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('2','BRAZIL','1','y alongside of the pending deposits. carefully special packages are about the ironic forges. slyly special ');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('3','CANADA','1','eas hang ironic, silent packages. slyly regular packages are furiously over the tithes. fluffily bold');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('4','EGYPT','4','y above the carefully unusual theodolites. final dugouts are quickly across the furiously regular d');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('5','ETHIOPIA','0','ven packages wake quickly. regu');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('6','FRANCE','3','refully final requests. regular, ironi');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('7','GERMANY','3','l platelets. regular accounts x-ray: unusual, regular acco');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('8','INDIA','2','ss excuses cajole slyly across the packages. deposits print aroun');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('9','INDONESIA','2',' slyly express asymptotes. regular deposits haggle slyly. carefully ironic hockey players sleep blithely. carefull');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('10','IRAN','4','efully alongside of the slyly final dependencies. ');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('11','IRAQ','4','nic deposits boost atop the quickly final requests? quickly regula');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('12','JAPAN','2','ously. final, express gifts cajole a');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('13','JORDAN','4','ic deposits are blithely about the carefully regular pa');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('14','KENYA','0',' pending excuses haggle furiously deposits. pending, express pinto beans wake fluffily past t');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('15','MOROCCO','0','rns. blithely bold courts among the closely regular packages use furiously bold platelets?');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('16','MOZAMBIQUE','0','s. ironic, unusual asymptotes wake blithely r');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('17','PERU','1','platelets. blithely pending dependencies use fluffily across the even pinto beans. carefully silent accoun');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('18','CHINA','2','c dependencies. furiously express notornis sleep slyly regular accounts. ideas sleep. depos');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('19','ROMANIA','3','ular asymptotes are about the furious multipliers. express dependencies nag above the ironically ironic account');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('20','SAUDI ARABIA','4','ts. silent requests haggle. closely express packages sleep across the blithely');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('21','VIETNAM','2','hely enticingly express accounts. even, final ');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('22','RUSSIA','3',' requests against the platelets use never according to the quickly regular pint');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('23','UNITED KINGDOM','3','eans boost carefully special requests. accounts are. carefull');
Insert into NATION (N_NATIONKEY,N_NAME,N_REGIONKEY,N_COMMENT) values ('24','UNITED STATES','1','y final packages. slow foxes cajole quickly. quickly silent platelets breach ironic accounts. unusual pinto be');



  CREATE TABLE "TELEPHONE" 
   ("C_CUSTKEY" NUMBER(38,0), 
	"C_PHONE" CHAR(15 )
   ) ;


Insert into TELEPHONE (C_CUSTKEY,C_PHONE) values ('45','19-715-298-9917');
Insert into TELEPHONE (C_CUSTKEY,C_PHONE) values ('45','20-180-440-8525');
Insert into TELEPHONE (C_CUSTKEY,C_PHONE) values ('46','20-895-685-6920');
Insert into TELEPHONE (C_CUSTKEY,C_PHONE) values ('46','16-357-681-2007');


  CREATE TABLE "CUSTOMER_TAXLOCATION" 
   ("C_CUSTKEY" NUMBER, 
	"N_NAME" VARCHAR2(25)
   );
   
   INSERT INTO customer_taxlocation values(1, 'BRAZIL');
   INSERT INTO customer_taxlocation values(2, 'BRAZIL');
   INSERT INTO customer_taxlocation values(3, 'BRAZIL');

SELECT * FROM customer_taxlocation;
SELECT * FROM TELEPHONE;