= Fixed Quantity

This is an extension for [Spree][1], put together by [jomz][2]

This extension changes the input field for line\_item quantity into a select, with options that are multiples of a product's base_quantity. For example, our client sells champaign online, for which most bottles can only be bought per 6.
Therefore, people can only buy 6 or 12 or 18 or ... bottles at a time.

You get an extra field 'base quantity' on the admin product form. The options that a client can choose are the first 10 multiples of this value. For example 6,12,18,... 60.

You could change this in app/views/products/\_product\_cart\_form\_with\_quantity\_dropdown.html.erb and app/views/orders/\_cart\_item\_quantity.html.erb (change the '10' or, ideally, make it configurable, and send a pull request)

== Installation

Copy to your project's vendor/extensions dir, and make sure the naming is right (remove the 'spree-' prefix).
Run rake db:migrate.
Reboot the server.

[1]: http://spreecommerce.com/ "Spree: Open Source E-Commerce for Ruby on Rails"
[2]: http://hardcoreforkingaction.com "Hard-core forking action: a low frequency, web-tech blog by Benny Degezelle"