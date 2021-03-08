#Autor: Michel Charnay Escobar.
#Correo: michelantoine.charnay@gmail.com
#github: https://github.com/mcharnay

#imports de las gemas usadas.
require 'rest-client'
require 'json'


#Obtención de transacciones de las últimas 24 horas dadas en segudos (24 hrs) por timespan por mercado.
response1 = RestClient.get("https://www.buda.com/api/v2/markets/BTC-CLP/trades?timestap=86400")
response2 = RestClient.get("https://www.buda.com/api/v2/markets/BTC-COP/trades?timestap=86400")
response3 = RestClient.get("https://www.buda.com/api/v2/markets/ETH-CLP/trades?timestap=86400")
response4 = RestClient.get("https://www.buda.com/api/v2/markets/ETH-BTC/trades?timestap=86400")
response5 = RestClient.get("https://www.buda.com/api/v2/markets/BTC-PEN/trades?timestap=86400")
response6 = RestClient.get("https://www.buda.com/api/v2/markets/ETH-PEN/trades?timestap=86400")
response7 = RestClient.get("https://www.buda.com/api/v2/markets/ETH-COP/trades?timestap=86400")
response8 = RestClient.get("https://www.buda.com/api/v2/markets/BCH-BTC/trades?timestap=86400")
response9 = RestClient.get("https://www.buda.com/api/v2/markets/BCH-CLP/trades?timestap=86400")
response10 = RestClient.get("https://www.buda.com/api/v2/markets/BCH-COP/trades?timestap=86400")
response11 = RestClient.get("https://www.buda.com/api/v2/markets/BCH-PEN/trades?timestap=86400")
response12 = RestClient.get("https://www.buda.com/api/v2/markets/BTC-ARS/trades?timestap=86400")
response13 = RestClient.get("https://www.buda.com/api/v2/markets/ETH-ARS/trades?timestap=86400")
response14 = RestClient.get("https://www.buda.com/api/v2/markets/BCH-ARS/trades?timestap=86400")
response15 = RestClient.get("https://www.buda.com/api/v2/markets/LTC-BTC/trades?timestap=86400")
response16 = RestClient.get("https://www.buda.com/api/v2/markets/LTC-CLP/trades?timestap=86400")
response17 = RestClient.get("https://www.buda.com/api/v2/markets/LTC-COP/trades?timestap=86400")
response18 = RestClient.get("https://www.buda.com/api/v2/markets/LTC-PEN/trades?timestap=86400")
response19 = RestClient.get("https://www.buda.com/api/v2/markets/LTC-ARS/trades?timestap=86400")

#Parseo de información entregada por url de las responses.
result1 = JSON.parse(response1.to_s)
result2 = JSON.parse(response2.to_s)
result3 = JSON.parse(response3.to_s)
result4 = JSON.parse(response4.to_s)
result5 = JSON.parse(response5.to_s)
result6 = JSON.parse(response6.to_s)
result7 = JSON.parse(response7.to_s)
result8 = JSON.parse(response8.to_s)
result9 = JSON.parse(response9.to_s)
result10 = JSON.parse(response10.to_s)
result11 = JSON.parse(response11.to_s)
result12 = JSON.parse(response12.to_s)
result13 = JSON.parse(response13.to_s)
result14 = JSON.parse(response14.to_s)
result15 = JSON.parse(response15.to_s)
result16 = JSON.parse(response16.to_s)
result17 = JSON.parse(response17.to_s)
result18 = JSON.parse(response18.to_s)
result19 = JSON.parse(response19.to_s)

#Nombre de los mercados
mercado_btc_clp = result1['trades']['market_id']
mercado_btc_cop = result2['trades']['market_id']
mercado_eth_clp = result3['trades']['market_id']
mercado_eth_btc = result4['trades']['market_id']
mercado_btc_pen = result5['trades']['market_id']
mercado_eth_pen = result6['trades']['market_id']
mercado_eth_cop = result7['trades']['market_id']
mercado_bch_btc = result8['trades']['market_id']
mercado_bch_clp = result9['trades']['market_id']
mercado_bch_cop = result10['trades']['market_id']
mercado_bch_pen = result11['trades']['market_id']
mercado_btc_ars = result12['trades']['market_id']
mercado_eth_ars = result13['trades']['market_id']
mercado_bch_ars = result14['trades']['market_id']
mercado_ltc_btc = result15['trades']['market_id']
mercado_ltc_clp = result16['trades']['market_id']
mercado_ltc_cop = result17['trades']['market_id']
mercado_ltc_pen = result18['trades']['market_id']
mercado_ltc_ars = result19['trades']['market_id']

#Obtención de precio de trade por mercado.
transacciones1 = result1["trades"]["entries"].map{|precio| precio[2]}
transacciones2 = result2["trades"]["entries"].map{|precio| precio[2]}
transacciones3 = result3["trades"]["entries"].map{|precio| precio[2]}
transacciones4 = result4["trades"]["entries"].map{|precio| precio[2]}
transacciones5 = result5["trades"]["entries"].map{|precio| precio[2]}
transacciones6 = result6["trades"]["entries"].map{|precio| precio[2]}
transacciones7 = result7["trades"]["entries"].map{|precio| precio[2]}
transacciones8 = result8["trades"]["entries"].map{|precio| precio[2]}
transacciones9 = result9["trades"]["entries"].map{|precio| precio[2]}
transacciones10 = result10["trades"]["entries"].map{|precio| precio[2]}
transacciones11 = result11["trades"]["entries"].map{|precio| precio[2]}
transacciones12 = result12["trades"]["entries"].map{|precio| precio[2]}
transacciones13 = result13["trades"]["entries"].map{|precio| precio[2]}
transacciones14 = result14["trades"]["entries"].map{|precio| precio[2]}
transacciones15 = result15["trades"]["entries"].map{|precio| precio[2]}
transacciones16 = result16["trades"]["entries"].map{|precio| precio[2]}
transacciones17= result17["trades"]["entries"].map{|precio| precio[2]}
transacciones18 = result18["trades"]["entries"].map{|precio| precio[2]}
transacciones19 = result19["trades"]["entries"].map{|precio| precio[2]}

#valores maximos de cada mercado
btc_clp = transacciones1.max
btc_cop = transacciones2.max
eth_clp = transacciones3.max
eth_btc = transacciones4.max
btc_pen = transacciones5.max
eth_pen = transacciones6.max
eth_cop = transacciones7.max
bch_btc = transacciones8.max
bch_clp = transacciones9.max
bch_cop = transacciones10.max
bch_pen = transacciones11.max
btc_ars = transacciones12.max
eth_ars = transacciones13.max
bch_ars = transacciones14.max
ltc_btc = transacciones15.max
ltc_clp = transacciones16.max
ltc_cop = transacciones17.max
ltc_pen = transacciones18.max
ltc_ars = transacciones19.max

#Muestra por consola información de transacciones.
puts "La transacción más alta dentro de las 24 horas para los siguientes mercados fueron :"
puts "Mercado : #{mercado_btc_clp}"
puts "BTC-CLP : #{btc_clp}"
puts "BTC-COP : #{btc_cop}"
puts "ETH-CLP : #{eth_clp}"
puts "ETH-BTC : #{eth_btc}"
puts "BTC-PEN : #{btc_pen}"
puts "ETH-PEN : #{eth_pen}"
puts "ETH-COP : #{eth_cop}"
puts "BCH-BTC : #{bch_btc}"
puts "BCH-CLP : #{bch_clp}"
puts "BCH-COP : #{bch_cop}"
puts "BCH-PEN : #{bch_pen}"
puts "BTC-ARS : #{btc_ars}"
puts "ETH-ARS : #{eth_ars}"
puts "BCH-ARS : #{bch_ars}"
puts "LTC-BTC : #{ltc_btc}"
puts "LTC-CLP : #{ltc_clp}"
puts "LTC-COP : #{ltc_cop}"
puts "LTC-PEN : #{ltc_pen}"
puts "LTC-ARS : #{ltc_ars}"
#transacciones = []
#result["trades"]["entries"].each do |val|
#    if val[3] == "buy"
#        transacciones << val[2]
#    end
#end
#puts transacciones.max


#Genera un archivo index.html con una tabla con el retorno de las  mayores transacciones por mercado
#durante las últimas 24 horas.

    File.open("index.html", "w") do |f|
      f.write("<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>")  
      f.write("<html>\n")
      f.write("<head>\n<title>Postulación Platanus</title>\n</head>\n")
      f.write("<body>\n")
      f.write("<h1>Mayores Transacciones por Mercado durante las últimas 24 Horas</h1>")
      f.write("<table border='1' class='table table-striped table-dark'>")
      f.write("<thead>")
      f.write("<tr>")
      f.write("<th scope='col'>Mercado</th>")
      f.write("<th scope='col'>Transacción</th>")
      f.write("</tr>")
      f.write("</thead>")
      f.write("<tbody>")
      #1-.BTC-CLP
      f.write("<tr>")
      #strings.each { |string| f.write("<td>#{string}</td>\n") }
      #strings.each { |string| f.write("<td>#{string}</td>\n") }
      f.write("<td>#{mercado_btc_clp}</td>")
      f.write("<td>#{btc_clp}</td>")
      f.write("</tr>")
      
      #2-.BTC-COP
      f.write("<tr>")
      f.write("<td>#{mercado_btc_cop}</td>")
      f.write("<td>#{btc_cop}</td>")
      f.write("</tr>")

      #3-.ETH-CLP
      f.write("<tr>")
      f.write("<td>#{mercado_eth_clp}</td>")
      f.write("<td>#{eth_clp}</td>")
      f.write("</tr>")

      #4-.ETH-BTC
      f.write("<tr>")
      f.write("<td>#{mercado_eth_btc}</td>")
      f.write("<td>#{eth_btc}</td>")
      f.write("</tr>")

      #5-.BTC-PEN
      f.write("<tr>")
      f.write("<td>#{mercado_btc_pen}</td>")
      f.write("<td>#{btc_pen}</td>")
      f.write("</tr>")

      #6-.ETH-PEN
      f.write("<tr>")
      f.write("<td>#{mercado_eth_pen}</td>")
      f.write("<td>#{eth_pen}</td>")
      f.write("</tr>")

      #7-.ETH-COP
      f.write("<tr>")
      f.write("<td>#{mercado_eth_cop}</td>")
      f.write("<td>#{eth_cop}</td>")
      f.write("</tr>")

      #8-.BCH-BTC
      f.write("<tr>")
      f.write("<td>#{mercado_bch_btc}</td>")
      f.write("<td>#{bch_btc}</td>")
      f.write("</tr>")

      #9-.BCH-CLP
      f.write("<tr>")
      f.write("<td>#{mercado_bch_clp}</td>")
      f.write("<td>#{bch_clp}</td>")
      f.write("</tr>")

      #10-.BCH-COP
      f.write("<tr>")
      f.write("<td>#{mercado_bch_cop}</td>")
      f.write("<td>#{bch_cop}</td>")
      f.write("</tr>")

      #11-.BCH-PEN
      f.write("<tr>")
      f.write("<td>#{mercado_bch_pen}</td>")
      f.write("<td>#{bch_pen}</td>")
      f.write("</tr>")

      #12-.BTC-ARS
      f.write("<tr>")
      f.write("<td>#{mercado_btc_ars}</td>")
      f.write("<td>#{btc_ars}</td>")
      f.write("</tr>")

      #13-.ETH-ARS
      f.write("<tr>")
      f.write("<td>#{mercado_eth_ars}</td>")
      f.write("<td>#{eth_ars}</td>")
      f.write("</tr>")

      #14-.BCH-ARS
      f.write("<tr>")
      f.write("<td>#{mercado_bch_ars}</td>")
      f.write("<td>#{bch_ars}</td>")
      f.write("</tr>")

      #15-.LTC-BTC
      f.write("<tr>")
      f.write("<td>#{mercado_ltc_btc}</td>")
      f.write("<td>#{ltc_btc}</td>")
      f.write("</tr>")

      #16-.LTC-CLP
      f.write("<tr>")
      f.write("<td>#{mercado_ltc_btc}</td>")
      f.write("<td>#{ltc_btc}</td>")
      f.write("</tr>")

      #17-.LTC-COP
      f.write("<tr>")
      f.write("<td>#{mercado_ltc_cop}</td>")
      f.write("<td>#{ltc_cop}</td>")
      f.write("</tr>")

      #18-.LTC-PEN
      f.write("<tr>")
      f.write("<td>#{mercado_ltc_pen}</td>")
      f.write("<td>#{ltc_pen}</td>")
      f.write("</tr>")

      #19-.LTC-BTC
      f.write("<tr>")
      f.write("<td>#{mercado_ltc_ars}</td>")
      f.write("<td>#{ltc_ars}</td>")
      f.write("</tr>")

      
      f.write("</tbody>")
      f.write("</table>")
  
      f.write("</body>\n</html>\n")
    end
