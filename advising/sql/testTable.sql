CREATE TABLE `tblStudent` (
  'pmkStudentID' varchar(25) NOT NULL,
  `fldFirstName` varchar(25) NOT NULL,
  `fldLastName` varchar(25) NOT NULL,
  `fldMajor` varchar(25) NOT NULL,
  `fldGraduateYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO 'tblAdvisingTest' ('fnkFirstName', 'fnkLastName', 'fnkMajor', 'fldYear') VALUES
("keohara", "Keegan", "O'Hara", "Philosophy", "2015");

