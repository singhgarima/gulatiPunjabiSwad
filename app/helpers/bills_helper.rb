module BillsHelper

  def add_form(form_ele)
    link_to_function 'add a order' do |page|
      form_ele.fields_for "bill_contents_attributes[NEW_RECORD]", @bill.bill_contents.new do |bcf|
        page.insert_html(:bottom, 
                         :order_placed,
                         :partial => 'bill_contents/bill_content', 
                         :locals => { :bcf => bcf,
                           :bill => @bill }
                       )
        page.insert_html(:bottom, :order_placed, "<script>$('#order_placed').html($('#order_placed').html().replace(/NEW_RECORD/g, new Date().getTime()));</script>");
      end
    end
  end


end
