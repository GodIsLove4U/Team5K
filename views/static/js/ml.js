const ML_TYPE_LR = "Linear_Regression"
const ML_TYPE_US = "Unsupervised"
const ML_TYPE_STATS_DONATIONS = "Stats_Donations"
const ML_TYPE_STATS_VOTES = "Stats_Votes"

var mlType_dir_dict = {
    "Linear_Regression": "linear_regression",
    "Unsupervised": "unsupervised_ml",
    "Stats_Donations": "stats_donation",
    "Stats_Votes": "stats_votes"
};

$(document).ready(function () {
    $("#submitBtn").click(function () {
        //Get mltype from the dropdown
        let ml_type = $("#mlType").val();
        //Pass in the ML type to the GET URL
        let ml_url = "/ml/" + ml_type;
        //Ajax call
        $.ajax({
            type: "GET", url: ml_url,
            success: function (data, text) {
                console.log("success");
                //console.log(data);
                //Get elements from data
                let ml_type = data["ml_type"];
                let stats = data["stats"];

                //Get the div columns to add image grid to
                let results_div_col1 = $("#results_images_col1");
                let results_div_col2 = $("#results_images_col2");
                let results_div_col3 = $("#results_images_col3");

                console.log("ml_type " + ml_type);
                for (let i = 0; i < stats.length; i++) {
                    let stat = stats[i];
                    var results_div;
                    if (i % 3 === 0) {
                        results_div = results_div_col1;
                    } else if (i % 3 === 1) {
                        results_div = results_div_col2;
                    } else {
                        results_div = results_div_col3;
                    }

                    let fname = stat["file_name"];
                    let state = stat["state"];
                    let sml_param = stat["sml_param"];
                    let r2_score = stat["r2_score"];
                    
                    let state_str = "State=" + state + "<br>";
                    let sml_param_str = "SML Param=" + sml_param + "<br>";
                    let r2_score_str = "R2 Score=" + r2_score + "<br>";
                    $('<span />').html(state_str).appendTo(results_div);
                    $('<span />').html(sml_param_str).appendTo(results_div);
                    $('<span />').html(r2_score_str).appendTo(results_div);

                    let model_dir = mlType_dir_dict[ml_type];
                    let file_path = "./static/img/" + model_dir + "/" + fname;
                    console.log(file_path);

                    $('<img />').attr({
                        'id': 'img'+i,
                        'src': file_path,
                        'width': 250,
                        'height': 250
                    }).appendTo(results_div);
                }
            },
            error: function (request, status, error) {
                console.log("fail");
                alert(request.responseText);
            }
        });
        return false;
    });
});