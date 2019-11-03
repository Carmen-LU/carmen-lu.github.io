$(document).ready(function(){

    $("button#get_data").click(function(){
        var items = [];
        var i = 0;
        var airtable_read_endpoint = "https://api.airtable.com/v0/appOkCJ9DXJ5WgGVW/Movie?api_key=keyVgAVOiOdcDu9Eh";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result){
            $.each(result.records, function(key,value){
                items = [];
                    items.push(value.fields.电影);
                    items.push(value.fields.豆瓣评分);
                    items.push(value.fields.导演);
                    items.push(value.fields.编剧);
                    items.push(value.fields.主演);
                    items.push(value.fields.上映日期);
                    items.push(value.fields.上映地点);
                    items.push(value.fields.时长);
                    items.push(value.fields.剧情简介);
                    dataSet.push(items);
                    console.log(items);
                }); // end .each
                console.log(dataSet);

            $('#table1').DataTable({
                data: dataSet,
                retrieve: true,
                columns:[
                    { title: "电影",
                      defaultContent:""},
                    { title: "豆瓣评分",
                      defaultContent:"" },
                    { title: "导演",
                      defaultContent:""},
                    { title: "编剧",
                      defaultContent:""},
                    { title: "主演",
                      defaultContent:""},
                    { title: "上映日期",
                      defaultContent:""},
                    { title: "上映地点",
                      defaultContent:""},
                    { title: "时长",
                      defaultContent:""},
                    { title: "剧情简介",
                      defaultContent:""},]
            });
        });
    }); //end button

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

           $('#table2').DataTable( {
               data: dataSet,
               retrieve: true,
               columns: [
                   { title: "上映地点",
                     defaultContent:""},
                   { title: "电影总数",
                       defaultContent:"" },]
           });

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