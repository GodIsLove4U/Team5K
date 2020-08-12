$(document).ready(function () {
    console.log("flow 1");
    $("#submitBtn").click(function (){
        let ml_type = $("#mlType").val();

        let ml_base = "/ml/"
        let ml_url = ml_base + ml_type
        console.log(ml_url);
        
        $.ajax({
            type: "GET", url: ml_url,
            success: function (data, text) {
                console.log("success");
                console.log(data);
            },
            error: function (request, status, error) {
                console.log("fail");
                alert(request.responseText);
            }
        });
        return false;
    });
});