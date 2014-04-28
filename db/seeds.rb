# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
store1 = Shop.create!(name: "Pochi Lifestyle Cafe", address: "1211 164th St SW Lynnwood, WA 98087", site: "http://www.yelp.com/biz/pochi-lifestyle-cafe-lynnwo...", phone: "(425) 967-3435",wifi_up: 13, wifi_down: 6, outlet_rating: 2, hrs_wkday: "1:00 pm - 11:00 pm", hrs_saturday: "12:00 pm - 12:00 am", hrs_sunday: "1:00 pm - 12:00 am",noise: 2)
store2 = Shop.create!(name: "Cafe Racer", address: "5828 Roosevelt Way NE Seattle, WA 98105", site: "http://caferacerseattle.com", phone: "(206) 523-5282", wifi_up: 10, wifi_down: 5, outlet_rating: 3, hrs_wkday: "9:00 am - 2:00 am", hrs_saturday: "9:00 am - 2:00 am", hrs_sunday: "9:00 am - 2:00 am", noise: 3)
store3 = Shop.create!(name: "Union Deli", address: " 1325 4th Ave Suite 411 Seattle, WA 98101", site: "no website", phone: "(206) 622-6578 ", wifi_up: 43, wifi_down: 39, outlet_rating: 3, hrs_wkday: "", hrs_saturday: "", hrs_sunday: "", noise: 1)


# <Shop id: 9, name: "University Zoka ", address: "2901 NE Blakeley Street", site: "www.zokacoffee.com", phone: "206.527.0990", wifi_up: 3, wifi_down: 7, outlet_rating: 5, hrs_wkday: "6am-10pm", hrs_saturday: "6am-10pm", hrs_sunday: "6am-10pm", created_at: "2014-04-10 04:20:22", updated_at: "2014-04-10 04:22:02", noise: 3, shop_image: "zoka-university.jpg">, #<Shop id: 1, name: "Urban City Drive-Thru and Lounge", address: "4313 212th St SW Mountlake Terrace, WA 98043", site: "http://www.urbancitycoffee.com/content/indexretail....", phone: "(425) 776-1273", wifi_up: 20, wifi_down: 11, outlet_rating: 2, hrs_wkday: "5:00am - 10:00pm", hrs_saturday: "6:00 am - 10:00 pm", hrs_sunday: "6:00am - 8:00pm", created_at: "2014-03-09 04:16:36", updated_at: "2014-04-10 04:58:32", noise: 3, shop_image: "UrbanCityCoffee.gif">, #<Shop id: 10, name: "Vovito Espresso Gelato Bar", address: " 1110 4th Ave Seattle, WA 98101", site: "http://vovito.com/", phone: "425-502-7522 ", wifi_up: 1, wifi_down: 6, outlet_rating: 2, hrs_wkday: "7:30AM - 8:00PM", hrs_saturday: "9:00AM - 9:00PM", hrs_sunday: "10:00AM - 7:00PM", created_at: "2014-04-18 00:52:55", updated_at: "2014- noise: 2)
# <Shop id: 5, name: "Richmond Beach Coffee Company", address: "1442 NW Richmond Beach Rd Shoreline, WA 98177", site: "http://www.richmondbeachcoffee.net", phone: "(206) 542-0511", wifi_up: 32, wifi_down: 2, outlet_rating: 1, hrs_wkday: "6:00 am - 6:00 pm", hrs_saturday: "6:00 am - 6:00 pm", hrs_sunday: "7:00 am - 6:00 pm", created_at: "2014-03-11 17:29:40", updated_at: "2014-03-12 01:11:19", noise: 1, shop_image: "ls-Richmond.jpg">, #<Shop id: 6, name: "Bubble Island", address: "13754 Aurora Ave N Seattle, WA 98138", site: "http://www.yelp.com/biz/bubble-island-seattle#query...", phone: "(206) 362-3955", wifi_up: 34, wifi_down: 9, outlet_rating: 2, hrs_wkday: "8:00 am - 6:00 pm", hrs_saturday: "8:00 am - 6:00 pm", hrs_sunday: "8:00 am - 6:00 pm", noise: 3)
# <Shop id: 3, name: "Cafe Racer", address: "5828 Roosevelt Way NE Seattle, WA 98105", site: "http://caferacerseattle.com", phone: "(206) 523-5282", wifi_up: 10, wifi_down: 5, outlet_rating: 3, hrs_wkday: "9:00 am - 2:00 am", hrs_saturday: "9:00 am - 2:00 am", hrs_sunday: "9:00 am - 2:00 am", created_at: "2014-03-10 05:55:15", updated_at: "2014-03-12 01:09:57", noise: 3, shop_image: "logo-caferacer.png">, #<Shop id: 5, name: "Richmond Beach Coffee Company", address: "1442 NW Richmond Beach Rd Shoreline, WA 98177", site: "http://www.richmondbeachcoffee.net", phone: "(206) 542-0511", wifi_up: 32, wifi_down: 2, outlet_rating: 1, hrs_wkday: "6:00 am - 6:00 pm", hrs_saturday: "6:00 am - 6:00 pm", hrs_sunday: "7:00 am - 6:00 pm", created_at: "2014-03-11 17:29:40", updated_at: "2014-03-12 01:11:19", noise: 1, shop_image: "ls-Richmond.jpg">, #<Shop id: 6, name: "Bubble Island", address: "13754 Aurora Ave N Seattle, WA 98138", site: "http://www.yelp.com/biz/bubble-island-seattle#query...", phone: "(206) 362-3955", wifi_up: 34, wifi_down: 9, outlet_rating: 2, hrs_wkday: "8:00 am - 6:00 pm", hrs_saturday: "8:00 am - 6:00 pm", hrs_sunday: "8:00 am - 6:00 pm", created_at: "2014-03-11 17:31:42", updated_at: "2014-03-12 01:12:22", noise: 3, shop_image: "ls-Bubble_Island.jpg">,
# <Shop id: 7, name: "Terra Bite Lounge ", address: "13754 Aurora Ave N Seattle, WA 98138", site: "http://www.yelp.com/biz/bubble-island-seattle#query...", phone: "(206) 362-3955", wifi_up: 34, wifi_down: 9, outlet_rating: 2, hrs_wkday: "8:00 am - 6:00 pm", hrs_saturday: "8:00 am - 6:00 pm", hrs_sunday: "8:00 am - 6:00 pm", created_at: "2014-03-11 17:33:32", updated_at: "2014-03-12 01:14:17", noise: 2, shop_image: "ls-terra_bite.jpg">,
# <Shop id: 4, name: "Jewel Box Cafe", address: "321 NE Thornton Place, Seattle WA 98125", site: "http://www.jewelboxcafe.net", phone: "(206) 432-9341", wifi_up: 3, wifi_down: 2, outlet_rating: 4, hrs_wkday: "6:00 am - 11:00 pm", hrs_saturday: "8:00 am - 12:00 am", hrs_sunday: "8:00 am - 11:00 am", created_at: "2014-03-11 17:24:32", updated_at: "2014-03-12 01:15:45", noise: 4, shop_image: "jewel_logo.jpg">,
# <Shop id: 8, name: "Union Deli", address: " 1325 4th Ave Suite 411 Seattle, WA 98101", site: "no website", phone: "(206) 622-6578 ", wifi_up: 43, wifi_down: 39, outlet_rating: 3, hrs_wkday: "", hrs_saturday: "", hrs_sunday: "", created_at: "2014-03-12 03:21:08", updated_at: "2014-03-12 03:21:08", noise: 1, shop_image: "Union_Deli.jpg">, #<Shop id: 9, name: "University Zoka ", address: "2901 NE Blakeley Street", site: "www.zokacoffee.com", phone: "206.527.0990", wifi_up: 3, wifi_down: 7, outlet_rating: 5, hrs_wkday: "6am-10pm", hrs_saturday: "6am-10pm", hrs_sunday: "6am-10pm", created_at: "2014-04-10 04:20:22", updated_at: "2014-04-10 04:22:02", noise: 3, shop_image: "zoka-university.jpg">, #<Shop id: 1, name: "Urban City Drive-Thru and Lounge", address: "4313 212th St SW Mountlake Terrace, WA 98043", site: "http://www.urbancitycoffee.com/content/indexretail....", phone: "(425) 776-1273", wifi_up: 20, wifi_down: 11, outlet_rating: 2, hrs_wkday: "5:00am - 10:00pm", hrs_saturday: "6:00 am - 10:00 pm", hrs_sunday: "6:00am - 8:00pm", created_at: "2014-03-09 04:16:36", updated_at: "2014-04-10 04:58:32", noise: 3, shop_image: "UrbanCityCoffee.gif">, #<Shop id: 10, name: "Vovito Espresso Gelato Bar", address: " 1110 4th Ave Seattle, WA 98101", site: "http://vovito.com/", phone: "425-502-7522 ", wifi_up: 1, wifi_down: 6, outlet_rating: 2, hrs_wkday: "7:30AM - 8:00PM", hrs_saturday: "9:00AM - 9:00PM", hrs_sunday: "10:00AM - 7:00PM", created_at: "2014-04-18 00:52:55", updated_at: "2014-04-18 00:54:11", noise: 2, shop_image: "Vovito_No_White.png">, ...]>
