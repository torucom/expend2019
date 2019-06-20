# coding: utf-8
module ExpendsHelper
  def full_title(page_title = '')
    base_title = "小払い管理"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
