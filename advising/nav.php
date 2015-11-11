<!-- ######################     Main Navigation   ########################## -->
<nav>
    <a href="http://keohara.w3.uvm.edu/cs148/advising/Keegan_CS148_ER_Diagram.pdf">ER Diagram</a>
    <br>
    <br>
    <a href="http://keohara.w3.uvm.edu/cs148/advising/Schema.sql">Schema</a>
     
    <ol>
        <?php
        print "<br>";
        print "</br>";
        // This sets the current page to not be a link. Repeat this if block for
        //  each menu item 
        if ($path_parts['filename'] == "index") {
            print '<li class="activePage">Home</li>';
        } else {
            print '<li><a href="index.php">Home</a></li>';
        }
        
        if ($path_parts['filename'] == "tables") {
            print '<li class="activePage">Display Tables</li>';
        } else {
            print '<li><a href="tables.php">Display Tables</a></li>';
        }
        
        if ($path_parts['filename'] == "populate-table.php") {
            print '<li class="activePage">Generate Plan</li>';
        } else {
            print '<li><a href="planGenerator.php">Generate Plan</a></li>';   
        }
        
        ?>
    </ol>
</nav>
<!-- #################### Ends Main Navigation    ########################## -->

