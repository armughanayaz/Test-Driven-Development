$(document).ready(function(input) {
     $('#ClientName').change(function() {
          console.log("inside function");
          $.ajax({
               dataType: 'json',
               url: "/get_buildings/" + input,
               succes: function(response) {
                    //$('#buildingId').find('option').not('first').remove();
                    for (var i = 0; i < response.length; i++) {
                         $('#buildingId').append($('<option/>', {
                              key: response[i].id,
                              text: response[i].fullNameAdministrator
                         }));
                    }
               }
          })
     })
})