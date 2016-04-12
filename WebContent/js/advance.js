$(document).ready(function () {
    //var table = $('#myAdvancedTable').DataTable();
	var table =$('#myAdvancedTable').DataTable({
        "bStateSave" : false,
        "pagingType" : "full_numbers",
        "searching" : true,
        "iDisplayLength" : 50,
        "serverSide" : true,
        "ajax" :  { "url" :	"DataServlet", "type": "POST" },
        "processing" : true,
        "dom" : 'C<"clear">lfrtip',
        //"dom" : "rtiS",
        "lengthChange" : false,
        "stateSave": true
        
	});
    myCallbackFunction = function (updatedCell, updatedRow) {
        alert("The new value for the cell is: " + updatedCell.data());
        alert("The values for each cell in that row are: " + updatedRow.data());
        $.ajax({
     	   url: "DataServlet?editParameter="+updatedRow.data(),
     	   type:"POST"
     	 })
    }

    table.MakeCellsEditable({
        "onUpdate": myCallbackFunction,
        "inputCss":'my-input-class',
        "columns": [2],
        
        "confirmationButton": { // could also be true
            "confirmCss": 'my-confirm-class',
            "cancelCss": 'my-cancel-class'
        }
    });

});