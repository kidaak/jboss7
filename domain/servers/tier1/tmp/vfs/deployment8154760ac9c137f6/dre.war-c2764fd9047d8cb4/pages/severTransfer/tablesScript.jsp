<script language="javascript">
<!--

var form;
var severButton;
var transferButton;
var showCancel;
var SUBMIT;
var DO_NOT_SUBMIT;
var submitState;
var SEVER;
var TRANSFER;
var PROCESS_SEVER;
var PROCESS_TRANSFER;

function initialDisable() {
    form = document.forms[0];
    severButton = document.getElementById("severButton");
    transferButton = document.getElementById("transferButton");
    cancelButton = document.getElementById("cancelButton");
    showCancel = document.getElementById("employerTable") ? true : false;
    
    SUBMIT = "Submit";
    DO_NOT_SUBMIT = "Don't Submit";
    submitState = DO_NOT_SUBMIT;

    CANCEL = "Cancel";
    SEVER = "Sever";
    TRANSFER = "Transfer";
    PROCESS_SEVER = "Select for Sever";
    PROCESS_TRANSFER = "Select for Transfer";

    if (transferButton) {
        disableTable(document.getElementById("employeeTable"));
        disableEmployeeElements();
        disableTable(document.getElementById("employerTable"));
        disableEmployerElements();
    } else {
        severButton.value = PROCESS_SEVER;
    }
}	

//Only submit if the form is ready to be submitted
function checkSubmit(button) {
    if (submitState == DO_NOT_SUBMIT) { 
        return false;
    } else { 
        return true; 
    }
}

//Enable/Disable tables according to user selection of Sever or Transfer
function prepareTables(buttonControl) {

    if (buttonControl.value == SEVER) {
        //set submit state so form doesn't submit
        submitState = DO_NOT_SUBMIT;

        severButton.value = PROCESS_SEVER;
        if (transferButton) {
            transferButton.disabled = true;
            transferButton.style.color = "gray";
            disableTable(document.getElementById("employerTable"));
            disableEmployerElements();
        }
        if (showCancel) {
            cancelButton.style.visibility = 'visible';
        }

        enableTable(document.getElementById("employeeTable"));
        enableEmployeeElements();
        
    } else if (buttonControl.value == TRANSFER) {
        //set submit state so form doesn't submit
        submitState = DO_NOT_SUBMIT;

        transferButton.value = PROCESS_TRANSFER;
        if (severButton) {
            severButton.disabled = true;
            severButton.style.color = "gray";
        }
        if (showCancel) {
            cancelButton.style.visibility = 'visible';
        }

        enableTable(document.getElementById("employeeTable"));
        enableEmployeeElements();
        enableTable(document.getElementById("employerTable"));
        enableEmployerElements();
           
    } else if (buttonControl.value == CANCEL) {
        //set submit state so form doesn't submit
        submitState = DO_NOT_SUBMIT;

        if (severButton) {
            severButton.value = SEVER;
            severButton.disabled = false;
            severButton.style.color = "black";
        }
        if (transferButton) {
            transferButton.value = TRANSFER;
            transferButton.disabled = false;
            transferButton.style.color = "black";
            disableTable(document.getElementById("employerTable"));
            disableEmployerElements();
        }
        cancelButton.style.visibility = 'hidden';
        
        disableTable(document.getElementById("employeeTable"));
        disableEmployeeElements();
        
        for (i = 0; i < form.elements.length; i++) {
            if (form.elements[i].type == "checkbox") {
                form.elements[i].checked = false;
            } else if (form.elements[i].type == "radio") {
                form.elements[i].checked = false;
            }
        }
    } else {
        submitState = SUBMIT;
    }	
}

//Enable Employee table checkboxes
function enableEmployeeElements() {
    for (var i = 0; i < form.elements.length; i++)
    {
        var element = form.elements[i];
        if (element.type == "checkbox") {
                element.disabled = false;
        }
    }
}

//Enable Employer table radio button
function enableEmployerElements() {
    for (var i = 0; i < form.elements.length; i++) {
        var element = form.elements[i];		
        if (element.type == "radio") {
            element.disabled = false;
        }
    }
}

//Enable the table specificed (this is visual only)
function enableTable(table) {

    table.style.backgroundColor = "#00334C";

    var rows = table.getElementsByTagName("tr");
    var cells
    var links;
    for (i = 0; i < rows.length ; i++) {
        cells = rows[i].getElementsByTagName("td");
        for (j = 0; j < cells.length ; j++) {
            cells[j].style.color = "black";
        }

        //"disable" text
        links = rows[i].getElementsByTagName("a");
        for (j = 0; j < links.length ; j++) {
            links[j].style.textDecoration = "underline";
            links[j].style.color = "blue";
        }
    }
}

//disable both the Employer and Employee tables
function disableBothTables() {
    disableTable(document.getElementById("employeeTable"));
    disableEmployeeElements();
    disableTable(document.getElementById("employerTable"));
    disableEmployerElements();
}

//Disable Employee  checkboxes
function disableEmployeeElements() {

    for (var i = 0; i < form.elements.length; i++) {
        var element = form.elements[i];
        if (element.type == "checkbox") {
            element.disabled = true;
        }
    }
}

//Disable Employer radio buttons
function disableEmployerElements() {
    for (var i = 0; i < form.elements.length; i++) {
        var element = form.elements[i];
        if (element.type == "radio") {
            element.disabled = true;
        }
    }
}

//Disable teh specified table (visually only)
function disableTable(table) {
	
    table.style.backgroundColor = "darkgray";

    var rows = table.getElementsByTagName("tr");
    var cells
    var links;
    for (i = 0; i < rows.length ; i++) {
    
        cells = rows[i].getElementsByTagName("td");
        for (j = 0; j < cells.length ; j++) {
                cells[j].style.color = "gray";
        }

        //"disable" text
        links = rows[i].getElementsByTagName("a");
        for (j = 0; j < links.length ; j++) {
                links[j].style.textDecoration = "none";
                links[j].style.color = "gray";
        }
    }
}

//-->
</script>
