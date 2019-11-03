$(document).ready(function(){


    $("button#get_data2").click(function() {
      var items = [];
      var i = 0;
      var airtable_read_endpoint = "https://api.airtable.com/v0/appOkCJ9DXJ5WgGVW/Venue?api_key=keyVgAVOiOdcDu9Eh";
      var dataSet = [];
      $.getJSON(airtable_read_endpoint, function(result) {
             $.each(result.records, function(key,value) {
                 items = [];
                     items.push(value.fields.上映地点);
                     items.push(value.fields.电影总数);
                     dataSet.push(items);
                     console.log(items);
              }); // end .each
              console.log(dataSet);



           var chart = c3.generate({
                data: {
                    columns: dataSet,
                    type : 'pie'
                },
                axis: {
                  x: {label: '上映地点'},
                  y: {label: '电影总数'}
                },
                pie: {
                    title: "电影上映地点统计",
                }
            });

      }); // end .getJSON

    }); // end button

}); // document ready