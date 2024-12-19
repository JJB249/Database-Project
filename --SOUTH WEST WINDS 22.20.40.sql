--SOUTH WEST WINDS

CREATE TABLE Users (
        UserID INTEGER PRIMARY KEY ,
        Username TEXT ,
        LoginPassword TEXT 
    );

CREATE TABLE W11Absences (
        AbsencesID INTEGER PRIMARY KEY ,
        Username INTEGER REFERENCES Users (Username) ,
        W11Absences TEXT ,
        DaysAbsent TEXT ,
        AbsencesInfomation TEXT ,
    );

CREATE TABLE W12Absences (
        AbsencesID INTEGER PRIMARY KEY ,
        Username INTEGER REFERENCES Users (Username) ,
        W12Absences TEXT ,
        DaysAbsent TEXT ,
        AbsencesInfomation TEXT ,
    );

CREATE TABLE WindData (
        WindDataID INTEGER PRIMARY KEY ,
        Timemarker TEXT ,
        WindSpeed TEXT ,
        WeatherInfomation TEXT ,
        WindDirection TEXT 
    );

CREATE TABLE WindPowerData (
        WindPowerDataID INTEGER PRIMARY KEY ,
        ExpectedEnergyProduction TEXT ,
        ActualEnergyProduction TEXT ,
        TurbineInfomation TEXT ,
        ExpectedTurbineDirection TEXT ,
        ActualTurbineDirection TEXT ,
        Timemarker INTEGER REFERENCES WindData (Timemarker) ,
    );

CREATE TABLE PredictionModel (
        PredictionModelID INTEGER PRIMARY KEY ,
        TimeOfPrediction TEXT ,
        PredictionInfomation TEXT 
    );  

CREATE TABLE PredictionResult (
        PredictionResultID INTEGER PRIMARY KEY ,
        TimeOfPrediction INTEGER REFERENCES PredictorModel (TimeOfPrediction),
        WindSpeedPrediction TEXT ,
        WindDirectionPrediction TEXT ,
        ResultInfomation TEXT
    );

INSERT INTO Users (UserID, Username, LoginPassword) 
VALUES
(1, 'john_doe', 'P@ssw0rd1'),
(2, 'amnjordan', '@nalysT'),
(3, 'alexander89', 'Al3xandr$!'),
(4, 'emily_wong', 'W0ngEm!22'),
(5, 'sam_jackson', 'J@cks0nS@m'),
(6, 'laura_miller', 'M!ll3rL@ur@45'),
(7, 'david_green', 'Gr33n7D@v1d'),
(8, 'sarah_adams', 'Ad@m$4r@h'),
(9, 'chris_brown', 'Br0wnC@hr!s007'),
(10, 'olivia_taylor', 'T@yl0rOl!v!a');

INSERT INTO W11Absences (AbsencesID, Username, W11Absences, DaysAbsent, AbsencesInfomation) 
VALUES
(90, 'john_doe', 0, 'N/A', 'No Absences'),
(91, 'alexander89', 0, 'N/A', 'No Absences'),
(92, 'emily_wong', 0, 'N/A', 'No Absences'),
(93, 'sam_jackson', 0, 'N/A', 'No Absences'),
(94, 'laura_miller', 0, 'N/A', 'No Absences'),
(95, 'david_green', 0, 'N/A', 'No Absences'),
(96, 'sarah_adams', 0, 'N/A', 'No Absences'),
(97, 'chris_brown', 0, 'N/A', 'No Absences'),
(98, 'olivia_taylor', 0, 'N/A', 'No Absences');

INSERT INTO W12Absences (AbsencesID, Username, W12Absences, DaysAbsent, AbsencesInfomation) 
VALUES
(90, 'john_doe', 0, 'N/A', 'No Absences'),
(91, 'alexander89', 1, '20TH MAR', 'Illness'),
(92, 'emily_wong', 1, '21ST MAR', 'Illness'),
(93, 'sam_jackson', 0, 'N/A', 'No Absences'),
(94, 'laura_miller', 7, 'WHOLE WEEK', 'Maternity Leave'),
(95, 'david_green', 0, 'N/A', 'No Absences'),
(96, 'sarah_adams', 1, '21ST MARCH', 'Injury'),
(97, 'chris_brown', 0, 'N/A', 'No Absences'),
(98, 'olivia_taylor', 0, 'N/A', 'No Absences');


INSERT INTO WindData (WindDataID, Timemarker, WindSpeed, WeatherInfomation, WindDirection)
VALUES 
    (1, '2024-03-13 08:00:00', '14 mph', 'Clear', '0'),
    (2, '2024-03-13 16:00:00', '20 mph', 'Sunny', '20'),
    (3, '2024-03-13 00:00:00', '18 mph', 'Clear', '20'),

    (4, '2024-03-14 08:00:00', '17 mph', 'Cloudy', '0'),
    (5, '2024-03-14 16:00:00', '19 mph', 'Cloudy', '10'),
    (6, '2024-03-14 00:00:00', '17 mph', 'Clear', '0'),

    (7, '2024-03-15 08:00:00', '23 mph', 'Light Rain', '90'),
    (8, '2024-03-15 16:00:00', '30 mph', 'Thunder Storm', '90'),
    (9, '2024-03-15 00:00:00', '12 mph', 'Cloudy', '70'),

    (10, '2024-03-16 08:00:00', '10 mph', 'Cloudy', '80'),
    (11, '2024-03-16 16:00:00', '12 mph', 'Cloudy', '90'),
    (12, '2024-03-16 00:00:00', '14 mph', 'Clear', '100'),

    (13, '2024-03-17 08:00:00', '14 mph', 'Cloudy', '100'),
    (14, '2024-03-17 16:00:00', '8 mph', 'Light Rain', '110'),
    (15, '2024-03-17 00:00:00', '20 mph', 'Clear', '100'),

    (16, '2024-03-18 08:00:00', '5 mph', 'Cloudy', '90'),
    (17, '2024-03-18 16:00:00', '7 mph', 'Cloudy', '90'),
    (18, '2024-03-18 00:00:00', '10 mph', 'Cloudy', '90'),

    (19, '2024-03-19 08:00:00', '13 mph', 'Light Rain', '200'),
    (20, '2024-03-19 16:00:00', '11 mph', 'Heavy Rain', '210'),
    (21, '2024-03-19 00:00:00', '12 mph', 'Light Rain', '200'),

    (22, '2024-03-20 08:00:00', '10 mph', 'Cloudy', '130'),
    (23, '2024-03-20 16:00:00', '25 mph', 'Thunder Storm', '55'),
    (24, '2024-03-20 00:00:00', '9 mph', 'Cloudy', '60'),

    (25, '2024-03-21 08:00:00', '16 mph', 'Clear', '100'),
    (26, '2024-03-21 16:00:00', '18 mph', 'Sunny', '110'),
    (27, '2024-03-21 00:00:00', '17 mph', 'Clear', '100'),

    (28, '2024-03-22 08:00:00', '18 mph', 'Clear', '120'),
    (29, '2024-03-22 16:00:00', '17 mph', 'Sunny', '110'),
    (30, '2024-03-22 00:00:00', '18 mph', 'Clear', '120');
    
INSERT INTO WindPowerData (WindPowerDataID, ExpectedEnergyProduction, ActualEnergyProduction, TurbineInfomation, ExpectedTurbineDirection, ActualTurbineDirection, Timemarker)
VALUES 
    (1, '280 W', '280 W', 'Optimal condition', '0', '0',(SELECT Timemarker FROM WindData WHERE WindDataID = 1)),
    (2, '400 W', '400 W', 'Optimal condition', '20', '20',(SELECT Timemarker FROM WindData WHERE WindDataID = 2)),
    (3, '360 W', '360 W','Optimal condition', '20', '20',(SELECT Timemarker FROM WindData WHERE WindDataID = 3)),

    (4, '340 W', '340 W','Optimal condition', '0', '0',(SELECT Timemarker FROM WindData WHERE WindDataID = 4)),
    (5, '380 W', '380 W','Optimal condition', '10', '10',(SELECT Timemarker FROM WindData WHERE WindDataID = 5)),
    (6, '340 W', '340 W','Optimal condition', '0', '0',(SELECT Timemarker FROM WindData WHERE WindDataID = 6)),

    (7, '460 W', '460 W', 'Optimal condition', '90', '90',(SELECT Timemarker FROM WindData WHERE WindDataID = 7)),
    (8, '600 W', '600 W', 'Optimal condition', '90', '90',(SELECT Timemarker FROM WindData WHERE WindDataID = 8)),
    (9, '240 W', '240 W', 'Optimal condition', '70', '70',(SELECT Timemarker FROM WindData WHERE WindDataID = 9)),

    (10,'200 W', '200 W', 'Optimal condition', '80', '80',(SELECT Timemarker FROM WindData WHERE WindDataID = 10)),
    (11, '240 W', '240 W', 'Optimal condition', '90', '90',(SELECT Timemarker FROM WindData WHERE WindDataID = 11)),
    (12,'280 W', '280 W', 'Optimal condition', '100', '100',(SELECT Timemarker FROM WindData WHERE WindDataID = 12)),

    (13, '280 W', '280 W',' Optimal condition', '100', '100',(SELECT Timemarker FROM WindData WHERE WindDataID = 13)),
    (14,'160 W', '160 W', 'Moderate condition', '110', '110',(SELECT Timemarker FROM WindData WHERE WindDataID = 14)),
    (15, '400 W', '400 W', 'Optimal condition', '100', '100',(SELECT Timemarker FROM WindData WHERE WindDataID = 15)),

    (16,'100 W', '100 W', 'Optimal condition', '90', '90',(SELECT Timemarker FROM WindData WHERE WindDataID = 16)),
    (17,'140 W', '140 W', 'Optimal condition', '90', '90',(SELECT Timemarker FROM WindData WHERE WindDataID = 17)),
    (18,'200 W', '200 W', 'Optimal condition', '90', '90',(SELECT Timemarker FROM WindData WHERE WindDataID = 18)),

    (19,'260 W', '260 W', 'Optimal condition', '200', '200',(SELECT Timemarker FROM WindData WHERE WindDataID = 19)),
    (20,'220 W', '220 W', 'Optimal condition', '210', '210',(SELECT Timemarker FROM WindData WHERE WindDataID = 20)),
    (21, '240 W', '240 W', 'Optimal condition', '200', '200',(SELECT Timemarker FROM WindData WHERE WindDataID = 21)),

    (22, '200 W', '200 W', 'Optimal condition', '130', '130',(SELECT Timemarker FROM WindData WHERE WindDataID = 22)),
    (23, '500 W', '425 W', 'Optimal condition', '80', '55',(SELECT Timemarker FROM WindData WHERE WindDataID = 23)),
    (24, '180 W', '180 W', 'Optimal condition', '60', '60',(SELECT Timemarker FROM WindData WHERE WindDataID = 24)),

    (25, '320 W', '160 W','Suboptimal condition', '100', '100',(SELECT Timemarker FROM WindData WHERE WindDataID = 25)),
    (26, '360 W', '180 W', 'Suboptimal condition', '110', '110',(SELECT Timemarker FROM WindData WHERE WindDataID = 26)),
    (27, '340 W', '340 W', 'Optimal condition', '100', '100',(SELECT Timemarker FROM WindData WHERE WindDataID = 27)),

    (28, '360 W', '360 W', 'Optimal condition', '120', '120',(SELECT Timemarker FROM WindData WHERE WindDataID = 28)),
    (29, '340 W', '340 W', 'Optimal condition', '110', '110',(SELECT Timemarker FROM WindData WHERE WindDataID = 29)),
    (30, '360 W', '360 W', 'Optimal condition', '120', '120',(SELECT Timemarker FROM WindData WHERE WindDataID = 30));

INSERT INTO PredictionModel (PredictorModelID, PredictionInfomation, TimeOfPrediction)
VALUES 
    (1, 'Future Analysis', '2024-03-23 00:00:00'),
    (2, 'Future Analysis', '2024-03-23 12:00:00'),
    (3, 'Future Analysis', '2024-03-24 00:00:00'),
    (4, 'Future Analysis', '2024-03-24 12:00:00'),
    (5, 'Future Analysis', '2024-03-25 00:00:00'),
    (6, 'Future Analysis', '2024-03-25 12:00:00'),
    (7, 'Future Analysis', '2024-03-26 00:00:00'),
    (8, 'Future Analysis', '2024-03-26 12:00:00'),
    (9, 'Future Analysis', '2024-03-27 00:00:00'),
    (10, 'Future Analysis', '2024-03-27 12:00:00'),
    (11, 'Future Analysis', '2024-03-28 00:00:00'),
    (12, 'Future Analysis', '2024-03-28 12:00:00'),
    (13, 'Future Analysis', '2024-03-29 00:00:00'),
    (14, 'Future Analysis', '2024-03-29 12:00:00'),
    (15, 'Future Analysis', '2024-03-30 00:00:00'),
    (16, 'Future Analysis', '2024-03-30 12:00:00'),
    (17, 'Future Analysis', '2024-03-31 00:00:00'),
    (18, 'Future Analysis', '2024-03-31 12:00:00'),
    (19, 'Future Analysis', '2024-03-32 00:00:00'),
    (20, 'Future Analysis', '2024-03-32 12:00:00');

INSERT INTO PredictionResult (PredictionResultID, TimeOfPrediction, WindSpeedPrediction, WindDirectionPrediction, ResultNotes)
VALUES 
    (1, '2024-03-23 00:00:00', '10 mph', '0', 'Clear'),
    (2, '2024-03-23 12:00:00', '12 mph', '10', 'Sunny'),
    (3, '2024-03-24 00:00:00', '12 mph', '10', 'Clear'),
    (4, '2024-03-24 12:00:00', '8 mph', '20', 'Sunny'),
    (5, '2024-03-25 00:00:00', '4 mph', '45', 'Cloudy'),
    (6, '2024-03-25 12:00:00', '25 mph', '60', 'Thunder Storm'),
    (7, '2024-03-26 00:00:00', '23 mph', '70', 'Thunder Storm'),
    (8, '2024-03-26 12:00:00', '15 mph', '5', 'Light Rain'),
    (9, '2024-03-27 00:00:00', '12 mph', '10', 'Cloudy'),
    (10, '2024-03-27 12:00:00', '10 mph', '15', 'Cloudy'),
    (11, '2024-03-28 00:00:00', '12 mph', '15', 'Light Rain'),
    (12, '2024-03-28 12:00:00', '14 mph', '20', 'Cloudy'),
    (13, '2024-03-29 00:00:00', '13 mph', '40', 'Cloudy'),
    (14, '2024-03-29 12:00:00', '15 mph', '35', 'Heavy Rain'),
    (15, '2024-03-30 00:00:00', '16 mph', '20', 'Heavy Rain'),
    (16, '2024-03-30 12:00:00', '10 mph', '200', 'Cloudy'),
    (17, '2024-03-31 00:00:00', '4 mph', '100', 'Clear'),
    (18, '2024-03-31 12:00:00', '13 mph', '0', 'Sunny'),
    (19, '2024-04-01 00:00:00', '14 mph', '0', 'Clear'),
    (20, '2024-04-01 12:00:00', '16 mph', '10', 'Sunny');