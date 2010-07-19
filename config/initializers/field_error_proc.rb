ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  is_label_tag = html_tag =~ /<label/
  if !is_label_tag
    %(<span class="field-with-error">#{html_tag}</span><span class="validation-error">&nbsp;
      #{instance.error_message.join(",")}</span>).html_safe
  else
    html_tag
  end
end

