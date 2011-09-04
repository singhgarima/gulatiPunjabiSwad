$(document).ready(function(){
  $(".bills select#bill_menu_ids").live('change', function(){
    var select = $(this);
    var values = select.val();
    var selected = new Array;
    $.each(values, function(index, option_value) {
      selected.push(select.find("option[value=" + option_value + "]").html());
    });
    $("span#selected_list").html("<ul><li>" + selected.join("</li><li>") + "</li></ul>");
  });
});
