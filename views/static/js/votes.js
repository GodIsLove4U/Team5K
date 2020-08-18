function append_span(results_div, span_id, str){
    $('<span />').html(str).appendTo(results_div);
}

function append_img(file_path, results_div, img_id){
    $('<img />').attr({
        'id': img_id,
        'src': file_path,
        'width': "100%",
        'height': "100%"
    }).appendTo(results_div);
}
function handle_lr_response(results_div, stat, file_dir, i){
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

    let img_id = 'img'+i;

    //Get the image file path and append the image
    let file_path = file_dir + "/" + fname;
    append_img(file_path, results_div, img_id);
}

function handle_us_response(stat, results_div, i){
    let img_id = 'img'+i;

    let file_path = stat["file_path"];
    append_img(file_path, results_div, img_id);
}

function handle_stats_filename_response2(stat, results_div, i){
    let img_id = 'img'+i;
    let file_path = stat["file_path"];
    append_img(file_path, results_div, img_id);
}

function handle_stats_filename_response(stat, results_div, i){
    let img_id = 'img'+i;
    let span_id = 'span'+i;

    let file_path = stat["file_path"];
    let title = stat["title"];

    append_span(results_div, span_id,title);
    append_img(file_path, results_div, img_id);
}

function handle_stats_don_response(stat, results_div, i){
    handle_stats_filename_response(stat, results_div, i);
}

function handle_stats_votes_response(stat, results_div, i){
    handle_stats_filename_response(stat, results_div, i);
}

function handle_stats_counties_response(stat, results_div, i){
    handle_stats_filename_response(stat, results_div, i);
}

function build_td(val){
    let td_str = "<td>" + String(val) + "</td>";
    return td_str;
}

const LIGHT_BLUE_HEX = "#ADD8E6";
const LIGHT_RED_HEX = "#FFCCCB";

var rowIdx = 0;
function add_row_to_table(county, predict_blue_votes, predict_red_votes, predict_other_votes, predict_blue_votes_percent, predict_red_votes_percent, predict_other_votes_percent, total_votes_2016) {
    county, predict_blue_votes, predict_red_votes, predict_other_votes, predict_blue_votes_percent, predict_red_votes_percent, predict_other_votes_percent, total_votes_2016

    let county_td = build_td(county);
    let blue_td = build_td(format_int(predicted_blue));
    let red_td = build_td(format_int(predicted_red));

    let color_str = "";
    if (predicted_blue > predicted_red) {
        color_str = LIGHT_BLUE_HEX;
    } else {
        color_str = LIGHT_RED_HEX;
    }

    let tr_row = '<tr style="background-color:' + color_str + '">';
    tr_row += county_td;
    tr_row += blue_td;
    tr_row += red_td;
    tr_row += "</tr>";

    return tr_row;
}

function handle_log_response(results_div, stat, file_dir, i){
    let accuracy = stat["accuracy"];
    let recall = stat["recall"];
    let precision = stat["precision"];
    let f1 = stat["f1"];
    let sml_param = stat["sml_param"];
    let state = stat["state"];
    let fname = stat["file_name"];

    let acc_str = "Accuracy=" + accuracy + "<br>";
    let recall_str = "Recall=" + recall + "<br>";
    let precision_str = "Precision=" + precision + "<br>";
    let f1_str = "F1=" + f1 + "<br>";
    let sml_param_str = "SML Param=" + sml_param + "<br>";
    let state_str = "State=" + state + "<br>";

    $('<span />').html(state_str).appendTo(results_div);
    $('<span />').html(sml_param_str).appendTo(results_div);
    $('<span />').html(acc_str).appendTo(results_div);
    $('<span />').html(recall_str).appendTo(results_div);
    $('<span />').html(precision_str).appendTo(results_div);
    $('<span />').html(f1_str).appendTo(results_div);

    let img_id = 'img'+i;
    //Get the image file path and append the image
    let file_path = file_dir + "/" + fname;
    append_img(file_path, results_div, img_id);
}

function commaSeparateNumber(val){
    while (/(\d+)(\d{3})/.test(val.toString())){
        val = val.toString().replace(/(\d+)(\d{3})/, '$1'+','+'$2');
    }
    return val;
}

function clear_stats(){
    $("#total_red").empty();
    $("#total_blue").empty();
    $("#votes_table_div").empty();
}

function format_int(float_val){
    let int_val = parseInt(float_val);
    let format_val = commaSeparateNumber(int_val);

    return format_val;
}

$(document).ready(function () {
    $("#submitBtn").click(function () {
        //Get mltype from the dropdown
        let ml_type = $("#mlType").val();
        //Pass in the ML type to the GET URL
        let ml_url = "/votes/" + ml_type;
        //Ajax call
        $.ajax({
            type: "GET", url: ml_url,
            success: function (data, text) {
                clear_stats();

                console.log("success");
                console.log(data);
                //Get elements from data
                let ml_type = data["state"];
                let state_dict = data["state_dict"];
                let stats = state_dict["stats"];
                let total_blue = format_int(state_dict["total_blue"]);
                let total_red = format_int(state_dict["total_red"]);

                if(total_blue > total_red) {
                    $("#predicted_winner").text("Democrat");
                } else if(total_blue < total_red) {
                    $("#predicted_winner").text("Republican");
                } else {
                    $("#predicted_winner").text("Tie!");
                }

                $("#total_red").text(total_red);
                $("#total_blue").text(total_blue);

                console.log("ml_type " + ml_type);
                let table_votes = "<table>";
                table_votes += "<thead><tr><th>County</th><th>Predicted_Blue_Votes</th><th>Predicted_Red_Votes</th></tr></thead>"
                for (let i = 0; i < stats.length; i++) {
                    let stat = stats[i];
                    let predict_blue_votes = stat["predict_blue_votes"];
                    let predict_red_votes = stat["predict_red_votes"];
                    let predict_other_votes = stat["predict_other_votes"];

                    let predict_blue_votes_percent = stat["predict_blue_votes_percent"];
                    let predict_red_votes_percent = stat["predict_red_votes_percent"];
                    let predict_other_votes_percent = stat["predict_other_votes_percent"];

                    let total_votes_2016 = stat["total_votes_2016"];
                    let county = stat["county"];

                    let tr_row = add_row_to_table(county, predict_blue_votes, predict_red_votes, predict_other_votes, predict_blue_votes_percent, predict_red_votes_percent, predict_other_votes_percent, total_votes_2016);
                    table_votes += tr_row;
                }
                table_votes += "</table>";
                $('#votes_table_div').append(table_votes);
            },
            error: function (request, status, error) {
                console.log("fail");
                alert(request.responseText);
            }
        });
        return false;
    });
});