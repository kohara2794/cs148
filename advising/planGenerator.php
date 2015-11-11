

<?php

include "top.php";
print '<style type="text/css">
            td, table, tr {
             border: 1px solid black;
        }
        </style>';



$query = 'SELECT fnkNetID, tblSemesterPlan.fnkYear, '  				
	. 'tblSemesterPlan.fnkTerm, tblSemesterPlanCourses.fnkCourseID, ' 
        . 'tblCourses.fldDepartment, tblCourses.fldCourseNumber, tblCourses.fldCredits '
        . 'FROM tbl4YearPlan '
        . 'JOIN tblSemesterPlan ON pmkPlanID = fnkPlanID '
        . 'JOIN tblSemesterPlanCourses ON pmkPlanID = tblSemesterPlanCourses.fnkPlanID ' 
        . 'AND tblSemesterPlan.fnkYear = tblSemesterPlanCourses.fnkYear '
        . 'AND tblSemesterPlan.fnkTerm = tblSemesterPlanCourses.fnkTerm '
        . 'JOIN tblCourses ON pmkCourseID = tblSemesterPlanCourses.fnkCourseID '
        . 'ORDER BY tblSemesterPlan.fldDisplayOrder, tblSemesterPlanCourses.fldDisplayOrder';


$dbArray = $thisDatabaseReader->select($query, "", 0, 3, 0, 0, false, false);
//$dbArray = $thisDatabaseReader->testquery($query, "", 0, 0, 0, 0, false, false);

$highlight = 0; // used to highlight alternate rows
print '<table>';  
$columns = 7;


print '<br>';
print '<h2>';
print $query;
print '</h2>';
print '<br>';

echo count($dbArray) . " entries";
print '<br>';
print '</br>';

$lastTerm = "";



foreach ($dbArray as $rec) {
        
         $currentTerm = $rec["fnkYear"] . $rec["fnkTerm"];
         
         
        $highlight++;
        if ($highlight % 2 != 0) {
            $style = ' odd ';
        } else {
            $style = ' even ';
        }
        print '<tr class=' . $style . '>';
        for ($i = 0; $i < $columns; $i++) {
            print '<td>' . $rec[$i] . str_repeat('&nbsp;', 3) . ' </td>';
        }
        if ($currentTerm != $lastTerm) {
             print '<td><tr>r>Debugging</tr></td>';
             $lastTerm = $currentTerm;
         }
        print '</tr>';
    }
print '</table>';


include "footer.php";
?>

</html>



