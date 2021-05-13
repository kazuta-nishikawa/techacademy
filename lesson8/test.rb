# def web_page
#   <<-PAGE
# <!DOCTYPE html>
# <html lang="ja">
#   <head>
#     <meta charset="UTF-8">
#     <title>タイトル</title>
#   </head>
#   <body>
#     <p>本文です。</p>
#   </body>
# </html>
#   PAGE
# end

# puts web_page

# require "erb"

# def web_page
#     <<-PAGE
# <!DOCTYPE html>
# <html lang="ja">
#   <head>
#     <meta charset="UTF-8">
#     <title>タイトル</title>
#   </head>
#   <body>
#     <p><%= Time.now %></p>
#   </body>
# </html>
#   PAGE
# end

# erb = ERB.new(web_page)
# result = erb.result
# puts result

# require 'erb'

# def web_page
#   <<-PAGE
# <!DOCTYPE html>
# <html lang="ja">
#   <head>
#     <meta charset="UTF-8">
#     <title>タイトル</title>
#   </head>
#   <body>
#     <% name = '太郎' %>
#     <p>こんにちは、<%= name %>さん</p>
#   </body>
# </html>
#   PAGE
# end

# erb = ERB.new(web_page)
# result = erb.result
# puts result


