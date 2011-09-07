$(document).ready(function(){
  $("form.bill_contents select:last").live('change', function(){
    var select = $(this);
    var parent = select.parent();
    var parent_class = parent.attr("class");
    var next_order_number = parseInt(parent_class.replace("o", "")) + 1;

    var new_select = parent.clone();
    var new_parent_class = "o" + next_order_number;
    new_select.attr('class', new_parent_class);

    var regex = new RegExp(parent_class, 'g');

    new_select.html(new_select.html().replace(regex, new_parent_class));
    new_select.find('input[type=text]').val(0);
    new_select.insertAfter(parent);
  });
});
