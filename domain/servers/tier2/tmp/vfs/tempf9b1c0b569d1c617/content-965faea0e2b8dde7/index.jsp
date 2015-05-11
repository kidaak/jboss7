<html>
<head>
    <script src="scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#uhSportsmanSearch").hide();
            $("#uhSportsmanSuspend").hide();
            $("#uhSportsmanBP").hide();
        });
        
        function searchSportsman(lastname, dob, zip) {
            var url = "azgfdsrv/simple/sportsman/search/v1.0/" + lastname + "/" + dob + "/" + zip;
            alert(url);
            $.get( url )
                .done(function( data ) {
                    alert(data);
                });
        }
    </script>
</head>
<body>
<h2>AZGFD Internal Service</h2>
<br/>
This service should not be directly accessible by external clients.
<br/>
<br/>
<div style="width: 500px;">
    <fieldset>
        <legend>User Help</legend>
        <a href="#" onclick='$("#uhSportsmanBP").toggle();'>Where are my bonus points?</a><br/>
        <div id="uhSportsmanBP" style="margin-left: 30px; margin-top: 10px; margin-bottom: 15px; width: 400px; background-color: #FFFFCC; border: 1px solid black;">
            <table>
            <tr>
                <th style="width: 5%; white-space: nowrap;">Last Name: </th><td><input type="text" id="uhssLastName" maxlength="60" /></td>
            </tr>
            <tr>
                <th style="text-align: right;">DOB: </th><td><input type="text" id="uhssDOB" length="8" maxlength="8" /><span> format.  mmddyyyy</span></td>
            </tr>
            <tr>
                <th style="text-align: right;">Zip5: </th><td><input type="text" id="uhssZip" length="5" maxlength="5"/></td>
            </tr>
            <tr>
                <th></th><td><input type="button" id="uhsbpSubmit" value="Search"/></td>
            </tr>
            </table>
        </div>
        <a href="#" onclick='$("#uhSportsmanSearch").toggle();'>What is my department id?</a><br/>
        <div id="uhSportsmanSearch" style="margin-left: 30px; margin-top: 10px; margin-bottom: 15px; width: 400px; background-color: #FFFFCC; border: 1px solid black;">
            <table>
            <tr>
                <th style="width: 5%; white-space: nowrap;">Last Name: </th><td><input type="text" id="uhssLastName" value="" maxlength="60" /></td>
            </tr>
            <tr>
                <th style="text-align: right;">DOB: </th><td><input type="text" id="uhssDOB" length="8" value="" maxlength="8" /><span> format.  mmddyyyy</span></td>
            </tr>
            <tr>
                <th style="text-align: right;">Zip5: </th><td><input type="text" id="uhssZip" length="5" value="" maxlength="5"/></td>
            </tr>
            <tr>
                <th></th><td><input type="button" id="uhssSubmit" value="Search" onclick='searchSportsman($("#uhssLastName").val(), $("#uhssDOB").val(), $("#uhssZip").val());'/></td>
            </tr>
            </table>
        </div>
        <a href="#" onclick='$("#uhSportsmanSuspend").toggle();'>Am I suspended?</a><br/>
        <div id="uhSportsmanSuspend" style="margin-left: 30px; margin-top: 10px; margin-bottom: 15px; width: 400px; background-color: #FFFFCC; border: 1px solid black;">
            <table style="border-collapse: collapse;">
            <tr>
                <th style="width: 5%; white-space: nowrap; text-align: right;">ID: </th><td><input style="margin-right: 5px;" type="text" id="uhssusSpid" maxlength="60" /><input type="button" id="uhssusSubmit1" value="Search"/></td>
            </tr>
            <tr style="border-top: 1px dashed #cccccc;">
                <th style="width: 5%; white-space: nowrap; text-align: right;">DeptID: </th><td><input style="margin-right: 5px;" type="text" id="uhssusDeptId" maxlength="60" /><input type="button" id="uhssusSubmit2" value="Search"/></td>
            </tr>
            <tr style="border-top: 1px dashed #cccccc;">
                <th style="width: 5%; white-space: nowrap; text-align: right;">Lic #: </th><td><input style="margin-right: 5px;" type="text" id="uhssusLicNo" maxlength="60" /><input type="button" id="uhssusSubmit3" value="Search"/></td>
            </tr>
            </table>
        </div>
    </fieldset>
</div>
</body>
</html>