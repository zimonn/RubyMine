module ApplicationHelper

  def show_params
    html = "<div style='border:1px red solid'> "
    html += '<heading>Parametry:</headings></br>'
    params.each do |key, value|
      html += "#{key}: #{value} <br/>" if ( key != 'authenticity_token' and key != 'utf8'  )

    end
    html += "</div>"
    return html.html_safe
  end


  def things_to_do(links )
# key = URL, value = body
    html = "<ul>\n"
    links.each do |url, body|
      html += "\t<li>" + link_to(body, url) + "</li>\n"
    end
    html += "</ul>\n"

    return html.html_safe
  end

  def calendar( month, year )
    prev_month = link_to("Previous",  calendar_path(:month => month.to_i - 1, :year => year))

    cal_str = "<table border='1'>\n"
    cal_str +="<tr><td>#{prev_month}</td><td colspan='6'>January</td></tr>\n"
    cal_str += "\t<tr>"
    cal_str += "\t<td> &nbsp; </td>"
    6.times do |day|
      cal_str += "<td>#{day + 1} </td>"
    end
    cal_str += "</tr>\n"
    cal_str += "</table>\n"

    return cal_str.html_safe
  end

end
