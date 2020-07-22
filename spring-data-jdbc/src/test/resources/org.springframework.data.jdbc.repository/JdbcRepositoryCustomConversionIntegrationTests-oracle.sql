DROP TABLE ENTITY_WITH_STRINGY_BIG_DECIMAL CASCADE CONSTRAINTS PURGE;
DROP TABLE OTHER_ENTITY CASCADE CONSTRAINTS PURGE;

CREATE TABLE ENTITY_WITH_STRINGY_BIG_DECIMAL (
    ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    STRINGY_NUMBER DECIMAL(20,10)
);

CREATE TABLE OTHER_ENTITY (
    ID  NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    CREATED DATE,
    ENTITY_WITH_STRINGY_BIG_DECIMAL INTEGER
);
