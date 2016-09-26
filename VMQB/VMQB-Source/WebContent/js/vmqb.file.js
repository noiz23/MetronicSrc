function madeAjaxCall() {
	var t=0;
			$('#loading').append("<div><img src=\"images/loader.gif\"/></div>");
	}

function createArray(length) {
    var arr = new Array(length || 0),
        i = length;

    if (arguments.length > 1) {
        var args = Array.prototype.slice.call(arguments, 1);
        while(i--) arr[length-1 - i] = createArray.apply(this, args);
    }

    return arr;
}

function selectTable( selectedTable ){
	if( selectedTable != ''){
		populateFieldsBox( selectedTable );
	}else{

		clearFieldsBox();
	}
}

function clearFieldsBox() {
	var obj = document.getElementById('fieldsField');

	while (obj.options.length>0) {
		obj.options.remove(0);
	}

	obj.options[0] = new Option('--Select field(s)--','',false,false);
}

function clearSelectedFieldsBox() {
	var obj = document.getElementById('fieldsField');

	while (obj.options.length>0) {
		obj.options.remove(0);
	}

	obj.options[0] = new Option('--Select field(s)--','',false,false);
}



function populateFieldsBox( selectedTable ){

	var fieldsField = document.getElementById( "fieldsField" );

	clearFieldsBox();

    for (var i = 0; i < tablesFields.length; i++) {

		if( tablesFields[i][0].substring(0, selectedTable.length) == selectedTable ){

			for(var j = 0; j < tablesFields[i].length; j++ ){

				fieldsField.options[j+1] = new Option(tablesFields[i][j],tablesFields[i][j],false,false);

			}

			return;
			
		}
    }

}

function hasItem( fieldElement, value ){

    for (var i = 0; i < fieldElement.options.length; i++) {
		if (fieldElement.options[i].value == value) 
			return true;
    }

    return false;
	
	
}

function addFields(){

//	selectedTablesField
//	selectedfieldsField
//	selectedJoinsField

	var tableField = document.getElementById( "tableField" );
	var fieldsField = document.getElementById( "fieldsField" );
	var selectedfieldsField = document.getElementById( "selectedfieldsField" );
	var selectedTablesField = document.getElementById( "selectedTablesField" );
	
	var fieldAdded = false;

    for (var i = 0; i < fieldsField.options.length; i++) {
		if (fieldsField.options[i].selected && !hasItem( selectedfieldsField, fieldsField.options[i].value )){
			selectedfieldsField.options[selectedfieldsField.options.length] = new Option(fieldsField.options[i].value,fieldsField.options[i].value,false,false);

			fieldAdded = true;
		}
    }

	if( fieldAdded && !hasItem( selectedTablesField, tableField.value ) )
		selectedTablesField.options[selectedTablesField.options.length] = new Option(tableField.value,tableField.value,false,false);

}

function addJoin(){

//	selectedTablesField
//	selectedfieldsField
//	selectedJoinsField

	var tableField = document.getElementById( "tableField" );
	var fieldsField = document.getElementById( "fieldsField" );
	var selectedfieldsField = document.getElementById( "selectedfieldsField" );
	var selectedTablesField = document.getElementById( "selectedTablesField" );
	var selectedJoinsField = document.getElementById( "selectedJoinsField" );
	

	var selectedFields = [];

    for (var i = 0; i < selectedfieldsField.options.length; i++) {
		if (selectedfieldsField.options[i].selected ){

			selectedFields[selectedFields.length] = selectedfieldsField[i].value;
		}
    }

    if( selectedFields.length < 2){
    	alert( "Two fields must be selected to create a join." );
    	return;
    }
    
    if( selectedFields.length > 2){
    	alert( "Please select only two fields to create a join." );
    	return;
    }

	
   selectedJoinsField.options[selectedJoinsField.options.length] = new Option(selectedFields[0]+"="+selectedFields[1],selectedFields[0]+"="+selectedFields[1],false,false);

    	
	
}


function generateQuery(){
	var selectedfieldsField = document.getElementById( "selectedfieldsField" );
	var selectedTablesField = document.getElementById( "selectedTablesField" );
	var selectedJoinsField = document.getElementById( "selectedJoinsField" );
	var queryField = document.getElementById( "queryField" );

	var fieldsQuery = "";
	var tablesQuery = "";
	var joinsQuery = "";


    for (var i = 0; i < selectedfieldsField.options.length; i++) {
		if( fieldsQuery.length != 0 )
			fieldsQuery += 	", ";

		fieldsQuery += 	selectedfieldsField[i].value;
		
    }

    for (var i = 0; i < selectedTablesField.options.length; i++) {
		if( tablesQuery.length != 0 )
			tablesQuery += 	", ";

		tablesQuery += 	selectedTablesField[i].value;
		
    }

    for (var i = 0; i < selectedJoinsField.options.length; i++) {
		if( joinsQuery.length != 0 )
			joinsQuery += 	" and ";

		joinsQuery += 	selectedJoinsField[i].value;
		
    }

    
    queryField.value = "select " +
    	fieldsQuery
    	+ " from "
    	+ tablesQuery
    	+ " where "
    	+ joinsQuery
	

}

function generateResults(){
	/* var queryField = document.getElementById( "queryField" );
	alert( queryField.value ); */
	var widthDiv = $( window ).width()-269;
	
	
	
	var selectedTablesField = document.getElementById( "selectedTablesField" );
	var selectedfieldsField = document.getElementById( "selectedfieldsField" ); 
	var tablesList="";
	var fieldsList="";
	
	if(selectedfieldsField.options.length>0 && selectedTablesField.options.length>0 )
	{
		$('#loadingImg').append("<div><img src=\"images/loader.gif\"/></div>");
		
			for (var i = 0; i < selectedfieldsField.options.length; i++) {
				if( fieldsList.length != 0 )
					fieldsList += 	", ";
	
				fieldsList += 	selectedfieldsField[i].value;
				
		    }
			
			
			 for (var i = 0; i < selectedTablesField.options.length; i++) {
				if( tablesList.length != 0 )
					tablesList += 	",";
	
				tablesList += 	selectedTablesField[i].value;
				
		    }
			 
			 
				 
			 
			 
				$.ajax(
					{
						type : "post",
						data : 'tables='+tablesList+'&fields='+fieldsList,
						url:"resultsField.html",
						success: function(response){
							 $('#loadingImg').html("");
							 $('#resultsField').html("");
							 
							 var objj = eval(response);
							 $('#resultTb').DataTable( {
							        data: objj[0].DATA,
							        columns:objj[0].COLUMNS
							    } );
							 
							 
						},
						error : function() {
							$('#resultsField').html( $('p').html("No se puede desplegar la informacion solicitada.") );
						}
	
					}
				
				)
}
	

}

