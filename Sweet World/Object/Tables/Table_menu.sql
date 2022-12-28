CREATE TABLE Menu
(
    id_menu          INT          NOT NULL,
    Menu_title       VARCHAR(25)  NOT NULL,
    Menu_description VARCHAR(80)  NOT NULL,
    Menu_price       NUMBER       NOT NULL,
    Menu_date        DATE         NOT NULL,
    Menu_Qty         INT          NOT NULL,
    id_dish          INT          NOT NULL,
    id_seculant      INT,
    id_complement    INT,
    id_resto         INT          NOT NULL,
    id_config        INT          NOT NULL
);

--***** BY KANGUE *****--
