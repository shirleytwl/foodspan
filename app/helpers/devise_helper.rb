module DeviseHelper
  def devise_error_messages!
    p resource.validate
    p "++++++++++++++++"
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join

    html = <<-HTML
    <div class="alert alert-error alert-danger alert-block mb-3">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end