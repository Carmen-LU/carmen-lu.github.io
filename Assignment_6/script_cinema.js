$(document).ready(function(){

    $("button#get_data").click(function(){
        var items = [];
        var i = 0;
        var airtable_read_endpoint = "https://api.airtable.com/v0/appOkCJ9DXJ5WgGVW/Cinema?api_key=keyVgAVOiOdcDu9Eh";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result){
            $.each(result.records, function(key,value){
                items = [];
                    items.push(value.fields.影院名稱);
                    items.push(value.fields.院線);
                    items.push(value.fields.電話);
                    items.push(value.fields.官網);
                    items.push(value.fields.地區);
                    items.push(value.fields.行政分區);
                    items.push(value.fields.地址);
                    items.push(value.fields.地圖);
                    dataSet.push(items);
                    console.log(items);
            });
            console.log(dataSet);

            $('#table2').DataTable({
                data: dataSet,
                retrieve: true,
                columns:[
                    { title: "影院名稱",
                      defaultContent:""},
                    { title: "院線",
                      defaultContent:"" },
                    { title: "電話",
                      defaultContent:"" },
                    { title: "官網",
                      defaultContent:""},
                    { title: "地區",
                      defaultContent:""},
                    { title: "行政分區",
                      defaultContent:""},
                    { title: "地址",
                      defaultContent:""},
                    { title: "地圖",
                      defaultContent:""},]
            });
        });
    });

});
