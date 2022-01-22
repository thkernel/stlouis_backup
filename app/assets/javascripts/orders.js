$(document).on('turbolinks:load', function(){

    $("#order-items").on('change', 'select', function(event) {
              
        var target_id = event.target.id;
        var target_value = $("#"+target_id ).val();
        console.log("Value: ", target_value);
        console.log("ID: ",target_id)
        var array = target_id.split("_");
        var object_id = array[4];
        var field = array[5];
        console.log("Object ID: ",object_id );
        console.log("FIELD: ", field );
       

        if (field == "product"){
            $.ajax({
                type: "GET",
                headers: {
                        'X-CSRF-Token': document.querySelector("meta[name=csrf-token]").content
                        },
                dataType: 'json',
                url: "product",
                data: { data: target_value},     
                success: function(response) {
                    var _price = response.data.unit_price;
                    var price = "order_order_items_attributes_" + object_id + "_price";
                    $("#"+price).val(_price);
                }
            });
        }else{
            $.ajax({
                type: "GET",
                headers: {
                        'X-CSRF-Token': document.querySelector("meta[name=csrf-token]").content
                        },
                dataType: 'json',
                url: "food",
                data: { data: target_value},     
                success: function(response) {
                    var _price = response.data.price;
                    var price = "order_order_items_attributes_" + object_id + "_price";
                    $("#"+price).val(_price);
                }
            });
        }
        
        
    });


    $("#order-items").on('change', "input", function(event) {
        var target_id = event.target.id;
        var target_value = $("#"+target_id ).val();
        console.log("Value: ", target_value);
        console.log("ID: ",target_id)
        var array = target_id.split("_");
        var object_id = array[4];
        console.log("Object ID: ",object_id );

        // calcul
        var price = $("#order_order_items_attributes_" + object_id + "_price").val();
        var amount = "order_order_items_attributes_" + object_id + "_amount";
     
        var total_amount = parseFloat((price )  * parseFloat(target_value)).toFixed(2);
        $("#"+amount).val(total_amount);
    });

    
});

//order_order_items_attributes_1642339613677_food_id