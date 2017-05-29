module ExamsHelper

    def render_a1_status(exam)
      if exam.is_a1en
        content_tag(:span, "", :class => "fa fa-check btn btn-xs btn-success")
      else
        content_tag(:span, "", :class => "fa fa-square-o btn btn-xs btn-warning")
      end
    end


    def render_b1_status(exam)
      if exam.is_b1en
        content_tag(:span, "", :class => "fa fa-check btn btn-xs btn-success")
      else
        content_tag(:span, "", :class => "fa fa-square-o btn btn-xs btn-warning")
      end
    end

    def render_c1_status(exam)
      if exam.is_c1en
        content_tag(:span, "", :class => "fa fa-check  btn btn-xs btn-success")
      else
        content_tag(:span, "", :class => "fa fa-square-o btn btn-xs btn-warning")
      end
    end

    def render_d1_status(exam)
      if exam.is_d1en
        content_tag(:span, "", :class => "fa fa-check  btn btn-xs btn-success")
      else
        content_tag(:span, "", :class => "fa fa-square-o btn btn-xs btn-warning")
      end
    end



    def render_e1_status(exam)
      if exam.is_e1en
        content_tag(:span, "", :class => "fa fa-check btn btn-xs btn-success")
      else
        content_tag(:span, "", :class => "fa fa-square-o btn btn-xs btn-warning")
      end
    end

    def render_f1_status(exam)
      if exam.is_f1en
        content_tag(:span, "", :class => "fa fa-check btn btn-xs btn-success")
      else
        content_tag(:span, "", :class => "fa fa-square-o btn btn-xs btn-warning")
      end
    end


end
